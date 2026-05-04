from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path, PurePosixPath


@dataclass(frozen=True)
class ResolvedAsset:
    virtual_path: str
    local_path: Path


class PakResolver:
    """Resolve legacy virtual package paths against recovered unpacked trees."""

    def __init__(self, root: str | Path):
        self.root = Path(root).resolve()
        self.package_roots = self._discover_package_roots()

    def _discover_package_roots(self) -> list[Path]:
        roots: list[Path] = []
        for path in self.root.rglob("*.pak"):
            if path.is_dir():
                roots.append(path.resolve())
        return sorted(roots)

    def resolve(self, virtual_path: str) -> ResolvedAsset:
        normalized = self._normalize(virtual_path)
        direct = (self.root / normalized).resolve()
        if direct.is_file():
            return ResolvedAsset(virtual_path, direct)

        for package_root in self.package_roots:
            candidate = (package_root / PurePosixPath(normalized).name).resolve()
            if candidate.is_file():
                return ResolvedAsset(virtual_path, candidate)

        for package_root in self.package_roots:
            candidate = (package_root / normalized).resolve()
            if candidate.is_file():
                return ResolvedAsset(virtual_path, candidate)

        raise FileNotFoundError(f"asset not found: {virtual_path}")

    def read_text(self, virtual_path: str, encoding: str = "utf-8") -> str:
        asset = self.resolve(virtual_path)
        return asset.local_path.read_text(encoding=encoding, errors="replace")

    @staticmethod
    def _normalize(path: str) -> str:
        return str(PurePosixPath(path.lstrip("/"))).replace("\\", "/")
