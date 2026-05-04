from pathlib import Path
import unittest

from recovered_runtime.admin_item_spec import (
    AdminItemAction,
    AdminItemCode,
    AdminItemRequest,
    build_call_plan,
    compile_admin_item_ir,
    generate_admin_item_source,
    validate_request,
)
from recovered_runtime.legacy_o import search_symbols


PACKAGE_ROOT = Path("../gs/gs/pack_data/un_pack_data/lib_gs32.pak")


class AdminItemSpecTests(unittest.TestCase):
    def test_validate_request_requires_operator_reason_and_positive_amount(self):
        missing_operator = validate_request(
            AdminItemRequest(AdminItemAction.ADD, gid="1001", item="/item/test", amount=1, reason="补偿")
        )
        invalid_amount = validate_request(
            AdminItemRequest(AdminItemAction.REMOVE, gid="1001", item="iid-1", amount=0, reason="修正", operator="gm")
        )
        ok = validate_request(
            AdminItemRequest(AdminItemAction.ADD, gid="1001", item="/item/test", amount=2, reason="补偿", operator="gm")
        )

        self.assertEqual(missing_operator.code, AdminItemCode.AUTH_FAILED)
        self.assertEqual(invalid_amount.code, AdminItemCode.INVALID_AMOUNT)
        self.assertTrue(ok.ok)

    def test_call_plan_uses_runtime_item_apis(self):
        request = AdminItemRequest(
            AdminItemAction.ADD,
            gid="1001",
            item="/clone/item/test",
            amount=2,
            reason="补偿",
            operator="gm",
        )

        plan = build_call_plan(request)

        self.assertIn("/gs/daemons/carryd.c", plan.dependencies)
        self.assertIn("new_item", plan.calls)
        self.assertIn("move_to_bag", plan.calls)
        self.assertEqual(plan.audit_fields["operator"], "gm")

    def test_admin_item_source_compiles_to_ir(self):
        source = generate_admin_item_source()
        ir = compile_admin_item_ir()

        self.assertIn("admin_add_item", source)
        self.assertTrue(any(function.name == "admin_remove_item" for function in ir.functions))
        self.assertIn("call:admin_validate_item_request", ir.required_features)


@unittest.skipUnless(PACKAGE_ROOT.exists(), "legacy package is not available")
class AdminItemSymbolSearchTests(unittest.TestCase):
    def test_symbol_search_finds_item_management_candidates(self):
        hits = search_symbols(PACKAGE_ROOT, ["new_item", "move_to_bag", "cost_item", "wizardd"], limit=50)
        hit_paths = {hit.path for hit in hits}

        self.assertTrue(any(path.endswith("carryd.o") for path in hit_paths))
        self.assertTrue(any(path.endswith("wizardd.o") for path in hit_paths))
