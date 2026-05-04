from __future__ import annotations

from dataclasses import dataclass, field
from pathlib import Path
import shlex


@dataclass(frozen=True)
class RuntimeLaunch:
    """Parsed launch contract from legacy magic/driver shell stubs."""

    executable: str
    root: str | None = None
    entry: str | None = None
    base: str | None = None
    memory_config: str | None = None
    service_root: str | None = None
    object_file: str | None = None
    eval_object: str | None = None
    worker_name: str | None = None
    port: int | None = None
    stack_size: int | None = None
    max_process: int | None = None
    enable_socket_daemon: int | None = None
    defines: dict[str, str] = field(default_factory=dict)
    passthrough: list[str] = field(default_factory=list)


def parse_define(value: str) -> tuple[str, str]:
    if "=" in value:
        name, define_value = value.split("=", 1)
        return name, define_value
    return value, "1"


def parse_launch_command(command: str) -> RuntimeLaunch:
    tokens = shlex.split(command, posix=True)
    if not tokens:
        raise ValueError("empty launch command")

    executable = tokens[0]
    kwargs: dict[str, object] = {"executable": executable, "defines": {}, "passthrough": []}
    defines: dict[str, str] = kwargs["defines"]  # type: ignore[assignment]
    passthrough: list[str] = kwargs["passthrough"]  # type: ignore[assignment]

    index = 1
    while index < len(tokens):
        token = tokens[index]

        def read_value() -> str:
            nonlocal index
            if index + 1 >= len(tokens):
                raise ValueError(f"missing value for {token}")
            index += 1
            return tokens[index]

        if token == "/r":
            kwargs["root"] = read_value()
        elif token == "/e":
            kwargs["entry"] = read_value()
        elif token == "/b":
            kwargs["base"] = read_value()
        elif token == "-m":
            kwargs["memory_config"] = read_value()
        elif token == "-r":
            kwargs["service_root"] = read_value()
        elif token == "-o":
            kwargs["object_file"] = read_value()
        elif token == "-e":
            kwargs["eval_object"] = read_value()
        elif token == "-w":
            kwargs["worker_name"] = read_value()
        elif token == "-p":
            kwargs["port"] = int(read_value())
        elif token == "/s":
            kwargs["stack_size"] = int(read_value())
        elif token == "/D":
            name, value = parse_define(read_value())
            defines[name] = value
        elif token.startswith("/D") and len(token) > 2:
            name, value = parse_define(token[2:])
            defines[name] = value
        elif token == "--max-process":
            kwargs["max_process"] = int(read_value())
        elif token == "--enable-socket-daemon":
            kwargs["enable_socket_daemon"] = int(read_value())
        else:
            passthrough.append(token)
        index += 1

    return RuntimeLaunch(**kwargs)


def parse_launch_script(path: str | Path) -> RuntimeLaunch:
    script_path = Path(path)
    for raw_line in script_path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or line.startswith("ulimit "):
            continue
        if "magic_Linux32" in line or line.startswith("./driver"):
            return parse_launch_command(line)
    raise ValueError(f"no launch command found in {script_path}")
