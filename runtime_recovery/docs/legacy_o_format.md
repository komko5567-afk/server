# Legacy `.o` Format Notes

This document records confirmed facts from recovered, self-owned `.o` samples under:

`../gs/gs/pack_data/un_pack_data/lib_gs32.pak`

## Confirmed So Far

- The files are not ELF objects.
- The format is little-endian or at least begins with little-endian-looking scalar fields.
- Many objects start with the byte prefix `01 00 01 00`.
- ASCII strings are embedded directly in the binary.
- Extracted strings include function names, source paths, inherited feature paths, daemon paths, constants, and command names.
- Some very small objects contain mostly header/control bytes plus one source path.

Example samples:

- `clone/misc/mixed_agent.o`
- `gs/clone/char/raw_user.o`
- `cmds/cta/get_server_version.o`
- `daemons/check_dbased.o`
- `daemons/configd.o`

## Current Parser Strategy

`recovered_runtime.legacy_o.LegacyObject` is conservative:

- It stores the original bytes exactly.
- It exposes header bytes as both hex and little-endian `u16`/`u32` probes.
- It extracts printable strings with offsets.
- It classifies strings heuristically as `path`, `symbol`, or `string`.
- It preserves unknown sections as raw bytes.

This allows safe read/write tooling before the section schema is fully recovered.

## Round Trip Rule

The first compatibility guarantee is:

```text
read legacy .o -> write .o -> bytes must be identical
```

Until opcode and section boundaries are confirmed, generated objects should either:

- be byte-identical round trips, or
- be explicitly marked as template-backed research output.

## Opcode Analysis

`o-analyze` currently emits byte-level clustering data:

- file count
- total bytes
- min/max object size
- common first-16-byte prefixes
- most common byte values

This avoids guessing instruction boundaries too early. The next useful step is to group samples by size and string layout, then compare small objects with similar behavior.

## Known Unknowns

- Exact header field meanings.
- Function table layout.
- Inheritance/import table layout.
- Constant pool boundaries.
- Code section offsets.
- Opcode width and operand encoding.
- Relocation or symbol reference encoding.

## Compiler Status

`LegacySourceCompiler` currently lowers the recovered LPC-like subset into an auditable source IR. It does not yet lower to confirmed legacy opcodes. This separation is intentional: the source compiler can evolve independently while the binary opcode map is recovered from samples.
