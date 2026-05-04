# Runtime Recovery Contract

This directory contains a clean recovery runtime for self-owned server assets. It does not patch, hook, or depend on the missing legacy `magic_Linux32` binary.

## CLI

Run commands from `runtime_recovery`:

```powershell
python -m recovered_runtime.cli manifest --root ..
python -m recovered_runtime.cli parse-launch ..\aaa\runaaa
python -m recovered_runtime.cli call ..\gs\gs\pack_data\un_pack_data\etc.pak\ac_combat_answer.c get_question_answer UNDEFINED UNDEFINED
```

The launcher parser supports the visible legacy contract:

- `./magic_Linux32` flags: `/r`, `/e`, `/b`, `/D`, `/s`, `-m`, `--max-process`, `--enable-socket-daemon`
- `./driver` flags: `-r`, `-o`, `-e`, `-w`, `-p`
- Unknown flags are preserved as passthrough values for later documentation.

## Asset Resolution

`PakResolver` treats unpacked `.pak` directories as package roots and resolves recovered text assets from them. This supports the current workspace shape, where `etc.pak` exists as an unpacked directory while `lib_*32.pak` and `.o` files are absent.

Future real archive support should be added behind the same resolver interface so interpreter code does not depend on archive storage details.

## Language Subset

The first interpreter target is an LPC-like subset observed in `ac_combat_answer.c`:

- preprocessor guards: `#ifndef`, `#ifdef`, `#define`, `#endif`
- declarations with qualifiers like `public` and `override`
- primitive declarations for `int`, `void`, `mixed`, and related type names
- by-reference parameters with `&`
- function calls, returns, local/global variables, assignment, and `if` blocks
- integer arithmetic and bitwise operators used by recovered scripts
- closure literals such as `(: set_answer_by_question :)`

Unsupported syntax should fail clearly until recovered examples justify adding it.

## Host API Boundary

Scripts receive host capabilities explicitly through `HostContext.builtins()`:

- `random()`
- `time()`
- `log(...)`
- `read_text(path)`
- `create_thread(priority, closure, ...)`
- `get_thread_id()`

New server features should be added through this host API boundary or through deliberate language subset additions.

## Bytecode Objects

No standalone `.o` files or `lib_*32.pak` archives are present in this workspace. `.o` compatibility is therefore intentionally not implemented yet. Add it as a separate loader module only after self-owned sample object files are recovered and documented.
