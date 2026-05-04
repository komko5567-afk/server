from __future__ import annotations

from dataclasses import asdict, dataclass, field
from pathlib import Path
import hashlib
import json
import re
import struct
from typing import Any


ASCII_RE = re.compile(rb"[\x20-\x7e]{4,}")
PATH_RE = re.compile(r"(^|/)[A-Za-z0-9_./-]+\.(?:c|h|o)$")
SYMBOL_RE = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")


@dataclass(frozen=True)
class LegacyString:
    offset: int
    value: str
    kind: str


@dataclass(frozen=True)
class LegacyHeader:
    prefix_hex: str
    first_u16: list[int]
    first_u32: list[int]


@dataclass(frozen=True)
class LegacyIR:
    """Research IR that preserves unknown binary sections by design."""

    path: str | None
    size: int
    sha256: str
    header: LegacyHeader
    strings: list[LegacyString]
    suspected_symbols: list[str]
    suspected_paths: list[str]
    raw_hex: str | None = None
    notes: list[str] = field(default_factory=list)

    def to_json(self, include_raw: bool = False) -> str:
        payload = asdict(self)
        if not include_raw:
            payload.pop("raw_hex", None)
        return json.dumps(payload, ensure_ascii=False, indent=2, sort_keys=True)


@dataclass(frozen=True)
class LegacySample:
    path: str
    size: int
    sha256: str
    header_hex: str
    string_count: int
    suspected_symbols: list[str]
    suspected_paths: list[str]


@dataclass(frozen=True)
class SymbolHit:
    path: str
    size: int
    matched_terms: list[str]
    symbols: list[str]
    paths: list[str]
    strings: list[str]


@dataclass
class LegacyObject:
    data: bytes
    path: Path | None = None

    @classmethod
    def read(cls, path: str | Path) -> LegacyObject:
        object_path = Path(path)
        return cls(object_path.read_bytes(), object_path)

    @classmethod
    def from_ir(cls, ir: LegacyIR, template: LegacyObject | None = None) -> LegacyObject:
        """Build an object from IR.

        The legacy opcode/section schema is still under analysis. For now this
        assembler only emits byte-identical template-backed objects or raw IR
        payloads produced by the disassembler. That gives a safe foundation for
        later opcode-aware assembly without corrupting unknown sections.
        """

        if ir.raw_hex:
            return cls(bytes.fromhex(ir.raw_hex))
        if template is not None:
            return cls(template.data)
        raise ValueError("legacy assembler requires raw_hex or a template until opcode schema is confirmed")

    def write(self, path: str | Path) -> None:
        Path(path).write_bytes(self.data)

    def to_bytes(self) -> bytes:
        return self.data

    def to_ir(self, include_raw: bool = False) -> LegacyIR:
        strings = self.extract_strings()
        suspected_paths = sorted({item.value for item in strings if item.kind == "path"})
        suspected_symbols = sorted({item.value for item in strings if item.kind == "symbol"})
        return LegacyIR(
            path=self.path.as_posix() if self.path else None,
            size=len(self.data),
            sha256=hashlib.sha256(self.data).hexdigest(),
            header=self.header(),
            strings=strings,
            suspected_symbols=suspected_symbols,
            suspected_paths=suspected_paths,
            raw_hex=self.data.hex() if include_raw else None,
            notes=[
                "Unknown binary sections are intentionally preserved as raw bytes.",
                "String and symbol classifications are heuristic until the section schema is fully mapped.",
            ],
        )

    def header(self) -> LegacyHeader:
        prefix = self.data[:64]
        u16_count = min(len(self.data) // 2, 16)
        u32_count = min(len(self.data) // 4, 8)
        first_u16 = list(struct.unpack("<" + "H" * u16_count, self.data[: u16_count * 2])) if u16_count else []
        first_u32 = list(struct.unpack("<" + "I" * u32_count, self.data[: u32_count * 4])) if u32_count else []
        return LegacyHeader(prefix.hex(" "), first_u16, first_u32)

    def extract_strings(self) -> list[LegacyString]:
        strings: list[LegacyString] = []
        for match in ASCII_RE.finditer(self.data):
            value = match.group().decode("latin1")
            strings.append(LegacyString(match.start(), value, classify_string(value)))
        return strings

    def sample(self, root: Path | None = None) -> LegacySample:
        ir = self.to_ir()
        rel_path = self.path.as_posix() if self.path else "<memory>"
        if root is not None and self.path is not None:
            try:
                rel_path = self.path.relative_to(root).as_posix()
            except ValueError:
                pass
        return LegacySample(
            path=rel_path,
            size=len(self.data),
            sha256=ir.sha256,
            header_hex=self.data[:32].hex(" "),
            string_count=len(ir.strings),
            suspected_symbols=ir.suspected_symbols[:32],
            suspected_paths=ir.suspected_paths[:32],
        )


def classify_string(value: str) -> str:
    if PATH_RE.search(value):
        return "path"
    if SYMBOL_RE.match(value):
        return "symbol"
    return "string"


def index_samples(root: str | Path) -> list[LegacySample]:
    root_path = Path(root)
    samples: list[LegacySample] = []
    for path in sorted(root_path.rglob("*.o")):
        if path.is_file():
            samples.append(LegacyObject.read(path).sample(root_path))
    return samples


def samples_to_json(samples: list[LegacySample]) -> str:
    return json.dumps([asdict(sample) for sample in samples], ensure_ascii=False, indent=2, sort_keys=True)


def search_symbols(root: str | Path, terms: list[str], limit: int = 100) -> list[SymbolHit]:
    root_path = Path(root)
    lowered_terms = [term.lower() for term in terms if term]
    hits: list[SymbolHit] = []

    for path in sorted(root_path.rglob("*.o")):
        if not path.is_file():
            continue
        legacy_object = LegacyObject.read(path)
        strings = legacy_object.extract_strings()
        haystack_values = [path.relative_to(root_path).as_posix(), *(item.value for item in strings)]
        haystack = "\n".join(haystack_values).lower()
        matched = [term for term in lowered_terms if term in haystack]
        if not matched:
            continue

        symbols = sorted({item.value for item in strings if item.kind == "symbol"})
        paths = sorted({item.value for item in strings if item.kind == "path"})
        plain_strings = sorted({item.value for item in strings if item.kind == "string"})
        hits.append(
            SymbolHit(
                path=path.relative_to(root_path).as_posix(),
                size=len(legacy_object.data),
                matched_terms=matched,
                symbols=symbols[:64],
                paths=paths[:64],
                strings=plain_strings[:64],
            )
        )

    hits.sort(key=lambda hit: (-len(hit.matched_terms), -_admin_item_relevance(hit.path), hit.path))
    return hits[:limit]


def symbol_hits_to_json(hits: list[SymbolHit]) -> str:
    return json.dumps([asdict(hit) for hit in hits], ensure_ascii=False, indent=2, sort_keys=True)


def _admin_item_relevance(path: str) -> int:
    score = 0
    high_signal = ["carryd.o", "itemd.o", "wizardd.o", "feature/char/carry.o", "bonusd.o", "packed_itemd.o"]
    for index, name in enumerate(high_signal):
        if path.endswith(name):
            score += 100 - index
    if "/daemons/" in path:
        score += 10
    if "/cmds/admin/" in path:
        score += 8
    return score


def opcode_histogram(paths: list[str | Path]) -> dict[str, Any]:
    """Return byte-frequency and local-neighborhood data for clustering.

    This is deliberately byte-level until instruction boundaries are proven.
    """

    counts = [0] * 256
    total = 0
    sizes: list[int] = []
    prefixes: dict[str, int] = {}
    for raw_path in paths:
        data = Path(raw_path).read_bytes()
        sizes.append(len(data))
        total += len(data)
        prefixes[data[:16].hex(" ")] = prefixes.get(data[:16].hex(" "), 0) + 1
        for byte in data:
            counts[byte] += 1
    most_common = sorted(enumerate(counts), key=lambda item: item[1], reverse=True)[:32]
    return {
        "file_count": len(paths),
        "total_bytes": total,
        "min_size": min(sizes) if sizes else 0,
        "max_size": max(sizes) if sizes else 0,
        "common_prefixes": prefixes,
        "most_common_bytes": [{"byte": byte, "hex": f"{byte:02x}", "count": count} for byte, count in most_common],
    }
