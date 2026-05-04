from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys

from .admin_item_spec import compile_admin_item_ir, generate_admin_item_source
from .assets import PakResolver
from .host import HostContext
from .interpreter import Ref, ScriptRuntime, UNDEFINED
from .legacy_compile import LegacySourceCompiler
from .legacy_o import LegacyObject, index_samples, opcode_histogram, samples_to_json, search_symbols, symbol_hits_to_json
from .launch import parse_launch_command, parse_launch_script
from .manifest import build_manifest


def cmd_manifest(args: argparse.Namespace) -> int:
    print(build_manifest(args.root).to_json())
    return 0


def cmd_parse_launch(args: argparse.Namespace) -> int:
    launch = parse_launch_script(args.path) if Path(args.path).exists() else parse_launch_command(args.path)
    print(launch)
    return 0


def cmd_call(args: argparse.Namespace) -> int:
    resolver = PakResolver(args.root)
    host = HostContext(resolver=resolver, seed=args.seed)
    source = Path(args.source).read_text(encoding="utf-8", errors="replace")
    runtime = ScriptRuntime.from_source(source, builtins=host.builtins())

    refs = [Ref(_parse_value(value)) for value in args.args]
    result = runtime.call(args.function, *refs)
    rendered_refs = [None if ref.value is UNDEFINED else ref.value for ref in refs]
    print({"result": result, "refs": rendered_refs, "logs": host.logs})
    return 0


def cmd_o_index(args: argparse.Namespace) -> int:
    samples = index_samples(args.root)
    print(samples_to_json(samples))
    return 0


def cmd_o_disasm(args: argparse.Namespace) -> int:
    legacy_object = LegacyObject.read(args.path)
    print(legacy_object.to_ir(include_raw=args.include_raw).to_json(include_raw=args.include_raw))
    return 0


def cmd_o_roundtrip(args: argparse.Namespace) -> int:
    legacy_object = LegacyObject.read(args.input)
    legacy_object.write(args.output)
    same = Path(args.input).read_bytes() == Path(args.output).read_bytes()
    print(json.dumps({"input": args.input, "output": args.output, "byte_identical": same}, indent=2))
    return 0 if same else 1


def cmd_o_analyze(args: argparse.Namespace) -> int:
    root = Path(args.root)
    paths = sorted(root.rglob("*.o"))
    if args.limit:
        paths = paths[: args.limit]
    print(json.dumps(opcode_histogram(paths), ensure_ascii=False, indent=2, sort_keys=True))
    return 0


def cmd_o_assemble(args: argparse.Namespace) -> int:
    template = LegacyObject.read(args.template)
    ir = template.to_ir(include_raw=True)
    assembled = LegacyObject.from_ir(ir)
    assembled.write(args.output)
    print(json.dumps({"template": args.template, "output": args.output, "size": len(assembled.to_bytes())}, indent=2))
    return 0


def cmd_o_compile_ir(args: argparse.Namespace) -> int:
    source = Path(args.source).read_text(encoding="utf-8", errors="replace")
    print(LegacySourceCompiler().compile_source(source).to_json())
    return 0


def cmd_o_search(args: argparse.Namespace) -> int:
    print(symbol_hits_to_json(search_symbols(args.root, args.terms, limit=args.limit)))
    return 0


def cmd_admin_item_source(args: argparse.Namespace) -> int:
    if args.ir:
        print(compile_admin_item_ir().to_json())
    else:
        print(generate_admin_item_source())
    return 0


def _parse_value(value: str):
    if value == "UNDEFINED":
        return UNDEFINED
    try:
        return int(value, 0)
    except ValueError:
        return value


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(prog="recovered-runtime")
    subcommands = parser.add_subparsers(required=True)

    manifest = subcommands.add_parser("manifest", help="Index recovered runtime assets")
    manifest.add_argument("--root", default="..")
    manifest.set_defaults(func=cmd_manifest)

    launch = subcommands.add_parser("parse-launch", help="Parse legacy launcher command or script")
    launch.add_argument("path")
    launch.set_defaults(func=cmd_parse_launch)

    call = subcommands.add_parser("call", help="Call a function in a recovered LPC-like source file")
    call.add_argument("source")
    call.add_argument("function")
    call.add_argument("args", nargs="*")
    call.add_argument("--root", default="..")
    call.add_argument("--seed", type=int, default=1)
    call.set_defaults(func=cmd_call)

    o_index = subcommands.add_parser("o-index", help="Index legacy .o samples under a package root")
    o_index.add_argument("root")
    o_index.set_defaults(func=cmd_o_index)

    o_disasm = subcommands.add_parser("o-disasm", help="Render a conservative JSON view of a legacy .o")
    o_disasm.add_argument("path")
    o_disasm.add_argument("--include-raw", action="store_true")
    o_disasm.set_defaults(func=cmd_o_disasm)

    o_roundtrip = subcommands.add_parser("o-roundtrip", help="Read and write a legacy .o byte-identically")
    o_roundtrip.add_argument("input")
    o_roundtrip.add_argument("output")
    o_roundtrip.set_defaults(func=cmd_o_roundtrip)

    o_analyze = subcommands.add_parser("o-analyze", help="Produce byte-level clustering data for legacy .o files")
    o_analyze.add_argument("root")
    o_analyze.add_argument("--limit", type=int, default=0)
    o_analyze.set_defaults(func=cmd_o_analyze)

    o_assemble = subcommands.add_parser("o-assemble", help="Assemble a safe template-backed legacy .o")
    o_assemble.add_argument("template")
    o_assemble.add_argument("output")
    o_assemble.set_defaults(func=cmd_o_assemble)

    o_compile_ir = subcommands.add_parser("o-compile-ir", help="Compile LPC-like source into legacy object IR")
    o_compile_ir.add_argument("source")
    o_compile_ir.set_defaults(func=cmd_o_compile_ir)

    o_search = subcommands.add_parser("o-search", help="Search legacy .o printable symbols and paths")
    o_search.add_argument("root")
    o_search.add_argument("terms", nargs="+")
    o_search.add_argument("--limit", type=int, default=100)
    o_search.set_defaults(func=cmd_o_search)

    admin_item_source = subcommands.add_parser("admin-item-source", help="Emit admin item daemon source or IR")
    admin_item_source.add_argument("--ir", action="store_true")
    admin_item_source.set_defaults(func=cmd_admin_item_source)
    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    return args.func(args)


if __name__ == "__main__":
    sys.exit(main())
