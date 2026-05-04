# Runtime Recovery

Clean reimplementation scaffold for the recovered server script runtime.

## What Is Implemented

- Asset manifest generation for launchers, configs, data tables, SQL, and source-like scripts.
- Legacy launcher parsing for visible `magic_Linux32` and `driver` command contracts.
- Virtual package resolution for unpacked `.pak` directories.
- A small LPC-like interpreter subset with by-reference parameters.
- Explicit host APIs for randomness, logging, time, asset reads, and thread stubs.
- Legacy `.o` sample indexing, conservative disassembly, byte-identical round trips, and source-to-IR compilation.
- Admin item interface specs for add/remove/list flows, including audit-first request validation.
- Unit tests covering launch parsing, asset indexing/resolution, and `ac_combat_answer.c`.

## Run

```powershell
cd runtime_recovery
python -m unittest discover -s tests
python -m recovered_runtime.cli manifest --root ..
python -m recovered_runtime.cli parse-launch ..\aaa\runaaa
python -m recovered_runtime.cli o-index ..\gs\gs\pack_data\un_pack_data\lib_gs32.pak
python -m recovered_runtime.cli o-disasm ..\gs\gs\pack_data\un_pack_data\lib_gs32.pak\clone\misc\mixed_agent.o
python -m recovered_runtime.cli o-search ..\gs\gs\pack_data\un_pack_data\lib_gs32.pak new_item move_to_bag cost_item --limit 20
python -m recovered_runtime.cli admin-item-source --ir
```

See `docs/runtime_contract.md` for the recovered contract and extension rules.
See `docs/legacy_o_format.md` for current legacy `.o` format findings.
See `docs/admin_item_interface.md` for the admin item add/remove/list interface contract.
