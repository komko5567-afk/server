# 后台玩家道具接口契约

目标是在 legacy `.o` 侧提供后台管理能力，让后台可以给玩家添加、删除和查询道具。当前实现先产出可审计的接口规格、调用计划和 LPC-like 源码/IR 模板；等 legacy opcode 映射成熟后，再降级生成真实 `.o`。

## 为什么不直接改库

`asktao.sql` 中疑似主道具表为 `item_info`，主键包含 `owner`、`dist`、`pos`、`env`，并含有 `iid`、`amount`、`save_to_text` 等字段。`save_to_text` 是不透明序列化内容，`iid` 也需要遵守服务端分配规则。

直接改 `item_info` 的风险：

- 在线玩家内存状态可能覆盖数据库修改。
- 手工 `iid` 可能与服务端分配冲突。
- `save_to_text` 无法保证被正确序列化。
- GM 日志、道具流转日志和保护规则可能缺失。

因此默认通过服务端已有道具 API 走游戏内链路。

## 依赖对象线索

后台道具模块优先包装这些已有对象能力：

- `gs/daemons/carryd.o`：`new_item`、`build_item`、`move_to_bag`、`cost_item`、`has_item`、`can_carry`
- `gs/daemons/itemd.o`：道具规则、装备、保护、鉴定相关逻辑
- `gs/feature/char/carry.o`：`query_inventory`、`set_inventory`、`get_inventory_objs`、`cost_items`
- `gs/daemons/wizardd.o`：`admin_clone_item`、`destroy_item`、`menu_modify_item`

可用命令搜索候选符号：

```powershell
python -m recovered_runtime.cli o-search ..\gs\gs\pack_data\un_pack_data\lib_gs32.pak new_item move_to_bag cost_item wizardd --limit 20
```

## 接口

### 添加道具

```text
admin_add_item(gid, item, amount)
```

预期调用链：

```text
admin_validate_item_request -> new_item/build_item -> move_to_bag -> admin_write_audit
```

### 删除道具

```text
admin_remove_item(gid, item, amount)
```

预期调用链：

```text
admin_validate_item_request -> has_item -> cost_item/destroy_item -> admin_write_audit
```

### 查询道具

```text
admin_list_items(gid)
```

预期调用链：

```text
query_inventory -> get_inventory_objs
```

## 后台请求字段

- `action`：`add`、`remove`、`list`
- `gid`：玩家角色 ID
- `item`：道具路径、名称或实例 ID
- `amount`：数量，添加/删除时必须大于 0
- `operator`：后台操作者，必须提供
- `reason`：操作原因，必须提供

## 返回码

- `OK`
- `AUTH_FAILED`
- `USER_NOT_FOUND`
- `ITEM_NOT_FOUND`
- `BAG_FULL`
- `INVALID_AMOUNT`
- `INVALID_REQUEST`

## 审计要求

每次请求必须生成审计 ID，并记录：

- `operator`
- `reason`
- `gid`
- `item`
- `amount`
- `action`
- 时间戳

## 当前实现状态

- `admin_item_spec.py` 提供请求/响应 dataclass、校验、调用计划和源码模板。
- `admin-item-source` CLI 可以输出 LPC-like 源码骨架或 IR。
- 真实 `.o` 输出等待 legacy opcode/段结构进一步确认后接入。
