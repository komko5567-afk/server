from __future__ import annotations

from dataclasses import asdict, dataclass
import json
from typing import Any

from .interpreter import Parser
from .preprocess import preprocess_source


@dataclass(frozen=True)
class CompiledFunction:
    name: str
    params: list[dict[str, Any]]
    body: list[Any]


@dataclass(frozen=True)
class CompiledGlobal:
    name: str
    expr: Any


@dataclass(frozen=True)
class SourceObjectIR:
    """Compiler-facing IR before legacy opcode lowering is confirmed."""

    functions: list[CompiledFunction]
    globals: list[CompiledGlobal]
    required_features: list[str]
    notes: list[str]

    def to_json(self) -> str:
        return json.dumps(asdict(self), ensure_ascii=False, indent=2, sort_keys=True, default=str)


class LegacySourceCompiler:
    def compile_source(self, source: str, defines: dict[str, str] | None = None) -> SourceObjectIR:
        parser = Parser(preprocess_source(source, defines))
        functions, globals_ = parser.parse()
        required_features = sorted(self._collect_features(functions, globals_))
        return SourceObjectIR(
            functions=[
                CompiledFunction(
                    name=function.name,
                    params=[{"name": param.name, "by_ref": param.by_ref} for param in function.params],
                    body=function.body,
                )
                for function in functions.values()
            ],
            globals=[CompiledGlobal(global_decl.name, global_decl.expr) for global_decl in globals_],
            required_features=required_features,
            notes=[
                "This IR is ready for opcode lowering once the legacy instruction schema is confirmed.",
                "It intentionally separates source compilation from binary assembly.",
            ],
        )

    def _collect_features(self, functions: dict[str, Any], globals_: list[Any]) -> set[str]:
        features: set[str] = set()
        for global_decl in globals_:
            self._collect_expr_features(global_decl.expr, features)
        for function in functions.values():
            for statement in function.body:
                self._collect_statement_features(statement, features)
            if any(param.by_ref for param in function.params):
                features.add("by_ref_params")
        return features

    def _collect_statement_features(self, statement: Any, features: set[str]) -> None:
        kind = statement[0]
        features.add(f"stmt:{kind}")
        if kind in {"assign", "var"}:
            self._collect_expr_features(statement[2], features)
        elif kind == "expr":
            self._collect_expr_features(statement[1], features)
        elif kind == "return" and statement[1] is not None:
            self._collect_expr_features(statement[1], features)
        elif kind == "if":
            self._collect_expr_features(statement[1], features)
            for child in statement[2] + statement[3]:
                self._collect_statement_features(child, features)

    def _collect_expr_features(self, expr: Any, features: set[str]) -> None:
        kind = expr[0]
        features.add(f"expr:{kind}")
        if kind == "binary":
            features.add(f"op:{expr[1]}")
            self._collect_expr_features(expr[2], features)
            self._collect_expr_features(expr[3], features)
        elif kind == "unary":
            features.add(f"op:{expr[1]}")
            self._collect_expr_features(expr[2], features)
        elif kind == "call":
            features.add(f"call:{expr[1]}")
            for arg in expr[2]:
                self._collect_expr_features(arg, features)
