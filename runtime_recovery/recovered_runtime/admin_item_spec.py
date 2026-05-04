from __future__ import annotations

from dataclasses import asdict, dataclass, field
from enum import StrEnum
import json
from time import time

from .legacy_compile import LegacySourceCompiler, SourceObjectIR


class AdminItemAction(StrEnum):
    ADD = "add"
    REMOVE = "remove"
    LIST = "list"


class AdminItemCode(StrEnum):
    OK = "OK"
    AUTH_FAILED = "AUTH_FAILED"
    USER_NOT_FOUND = "USER_NOT_FOUND"
    ITEM_NOT_FOUND = "ITEM_NOT_FOUND"
    BAG_FULL = "BAG_FULL"
    INVALID_AMOUNT = "INVALID_AMOUNT"
    INVALID_REQUEST = "INVALID_REQUEST"


@dataclass(frozen=True)
class AdminItemRequest:
    action: AdminItemAction
    gid: str
    item: str = ""
    amount: int = 1
    reason: str = ""
    operator: str = ""


@dataclass(frozen=True)
class AdminItemResponse:
    ok: bool
    code: AdminItemCode
    message: str
    audit_id: str


@dataclass(frozen=True)
class AdminItemCallPlan:
    request: AdminItemRequest
    dependencies: list[str]
    calls: list[str]
    audit_fields: dict[str, str] = field(default_factory=dict)

    def to_json(self) -> str:
        return json.dumps(asdict(self), ensure_ascii=False, indent=2, sort_keys=True)


def validate_request(request: AdminItemRequest) -> AdminItemResponse:
    audit_id = build_audit_id(request)
    if not request.operator.strip():
        return AdminItemResponse(False, AdminItemCode.AUTH_FAILED, "operator is required", audit_id)
    if not request.reason.strip():
        return AdminItemResponse(False, AdminItemCode.INVALID_REQUEST, "reason is required", audit_id)
    if not request.gid.strip():
        return AdminItemResponse(False, AdminItemCode.USER_NOT_FOUND, "gid is required", audit_id)
    if request.action in {AdminItemAction.ADD, AdminItemAction.REMOVE} and not request.item.strip():
        return AdminItemResponse(False, AdminItemCode.ITEM_NOT_FOUND, "item is required", audit_id)
    if request.action in {AdminItemAction.ADD, AdminItemAction.REMOVE} and request.amount <= 0:
        return AdminItemResponse(False, AdminItemCode.INVALID_AMOUNT, "amount must be positive", audit_id)
    return AdminItemResponse(True, AdminItemCode.OK, "request accepted", audit_id)


def build_call_plan(request: AdminItemRequest) -> AdminItemCallPlan:
    response = validate_request(request)
    base_dependencies = [
        "/gs/daemons/carryd.c",
        "/gs/daemons/itemd.c",
        "/gs/daemons/wizardd.c",
    ]
    calls = ["admin_validate_item_request", "admin_write_audit"]
    if response.ok and request.action == AdminItemAction.ADD:
        calls.extend(["new_item", "build_item", "move_to_bag"])
    elif response.ok and request.action == AdminItemAction.REMOVE:
        calls.extend(["has_item", "cost_item"])
    elif response.ok and request.action == AdminItemAction.LIST:
        calls.extend(["query_inventory", "get_inventory_objs"])
    return AdminItemCallPlan(
        request=request,
        dependencies=base_dependencies,
        calls=calls,
        audit_fields={
            "operator": request.operator,
            "reason": request.reason,
            "audit_id": response.audit_id,
        },
    )


def generate_admin_item_source() -> str:
    """Generate a parseable LPC-like skeleton for later legacy opcode lowering."""

    return """\
public int admin_validate_item_request(string gid, string item, int amount)
{
    if (amount == 0)
    {
        return 0;
    }
    return 1;
}

public int admin_write_audit(string gid, string item, int amount)
{
    return 1;
}

public int admin_add_item(string gid, string item, int amount)
{
    if (admin_validate_item_request(gid, item, amount) == 0)
    {
        return 0;
    }
    admin_write_audit(gid, item, amount);
    return 1;
}

public int admin_remove_item(string gid, string item, int amount)
{
    if (admin_validate_item_request(gid, item, amount) == 0)
    {
        return 0;
    }
    admin_write_audit(gid, item, amount);
    return 1;
}

public int admin_list_items(string gid)
{
    return 1;
}
"""


def compile_admin_item_ir() -> SourceObjectIR:
    return LegacySourceCompiler().compile_source(generate_admin_item_source())


def build_audit_id(request: AdminItemRequest) -> str:
    stamp = int(time())
    safe_operator = request.operator.strip() or "unknown"
    safe_gid = request.gid.strip() or "nogid"
    return f"admin-item-{safe_operator}-{safe_gid}-{stamp}"
