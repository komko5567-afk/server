from __future__ import annotations

from dataclasses import dataclass, field
import random as random_module
import time
from typing import Any

from .assets import PakResolver


@dataclass
class HostContext:
    """Explicit host API boundary for recovered scripts."""

    resolver: PakResolver | None = None
    seed: int | None = 1
    logs: list[str] = field(default_factory=list)

    def __post_init__(self) -> None:
        self._random = random_module.Random(self.seed)

    def builtins(self) -> dict[str, Any]:
        return {
            "random": self.random,
            "time": self.now,
            "log": self.log,
            "read_text": self.read_text,
            "create_thread": self.create_thread,
            "get_thread_id": self.get_thread_id,
        }

    def random(self) -> int:
        return self._random.randint(0, 0x7FFFFFFF)

    def now(self) -> int:
        return int(time.time())

    def log(self, *values: Any) -> None:
        self.logs.append(" ".join(str(value) for value in values))

    def read_text(self, virtual_path: str) -> str:
        if self.resolver is None:
            raise RuntimeError("no asset resolver configured")
        return self.resolver.read_text(virtual_path)

    def create_thread(self, _priority: int, closure: str, *args: Any) -> None:
        self.logs.append(f"thread stub: {closure}({', '.join(map(str, args))})")

    def get_thread_id(self) -> int:
        return 1
