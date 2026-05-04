from __future__ import annotations

from dataclasses import asdict, dataclass
from pathlib import Path
import json

from .launch import RuntimeLaunch, parse_launch_script


CONFIG_SUFFIXES = {".ini", ".cfg"}
DATA_SUFFIXES = {".list", ".xml", ".txt"}
SOURCE_SUFFIXES = {".c"}


@dataclass(frozen=True)
class ManifestEntry:
    path: str
    kind: str
    size: int


@dataclass(frozen=True)
class RuntimeManifest:
    root: str
    launchers: list[dict]
    entries: list[ManifestEntry]
    counts: dict[str, int]

    def to_json(self) -> str:
        return json.dumps(asdict(self), ensure_ascii=False, indent=2, sort_keys=True)


def classify_path(path: Path) -> str | None:
    name = path.name.lower()
    suffix = path.suffix.lower()
    if name.startswith("run") and not suffix:
        return "launcher"
    if suffix in CONFIG_SUFFIXES:
        return "config"
    if suffix in DATA_SUFFIXES:
        return "data"
    if suffix in SOURCE_SUFFIXES:
        return "source"
    if suffix == ".sql":
        return "sql"
    return None


def build_manifest(root: str | Path) -> RuntimeManifest:
    root_path = Path(root).resolve()
    entries: list[ManifestEntry] = []
    launchers: list[RuntimeLaunch] = []
    counts: dict[str, int] = {}

    for path in sorted(root_path.rglob("*")):
        if not path.is_file():
            continue
        kind = classify_path(path)
        if kind is None:
            continue
        rel = path.relative_to(root_path).as_posix()
        entries.append(ManifestEntry(rel, kind, path.stat().st_size))
        counts[kind] = counts.get(kind, 0) + 1
        if kind == "launcher":
            try:
                launchers.append(parse_launch_script(path))
            except ValueError:
                pass

    return RuntimeManifest(
        root=root_path.as_posix(),
        launchers=[asdict(launcher) for launcher in launchers],
        entries=entries,
        counts=counts,
    )
