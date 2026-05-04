from __future__ import annotations

from dataclasses import dataclass
import re
from typing import Any, Callable

from .preprocess import preprocess_source


UNDEFINED = object()


@dataclass
class Ref:
    value: Any = UNDEFINED


@dataclass(frozen=True)
class Param:
    name: str
    by_ref: bool = False


@dataclass(frozen=True)
class Function:
    name: str
    params: list[Param]
    body: list[Any]


@dataclass(frozen=True)
class GlobalDecl:
    name: str
    expr: Any


@dataclass(frozen=True)
class ReturnSignal:
    value: Any


TOKEN_RE = re.compile(
    r"""
    (?P<space>\s+)
  | (?P<number>0[xX][0-9a-fA-F]+|\d+)
  | (?P<id>[A-Za-z_][A-Za-z0-9_]*)
  | (?P<op>\(:|:\)|==|!=|<=|>=|&&|\|\||[{}();,&=+\-*/%^|])
    """,
    re.VERBOSE,
)


class Lexer:
    def __init__(self, source: str):
        self.tokens = [
            (match.lastgroup, match.group())
            for match in TOKEN_RE.finditer(source)
            if match.lastgroup != "space"
        ]
        self.index = 0

    def peek(self) -> str | None:
        return self.tokens[self.index][1] if self.index < len(self.tokens) else None

    def take(self, value: str | None = None) -> str:
        if self.index >= len(self.tokens):
            raise SyntaxError("unexpected end of input")
        token = self.tokens[self.index][1]
        if value is not None and token != value:
            raise SyntaxError(f"expected {value!r}, got {token!r}")
        self.index += 1
        return token

    def maybe(self, value: str) -> bool:
        if self.peek() == value:
            self.index += 1
            return True
        return False


class Parser:
    QUALIFIERS = {"public", "private", "protected", "override", "static", "varargs"}
    TYPES = {"void", "int", "string", "mixed", "object", "mapping", "array", "float"}

    def __init__(self, source: str):
        self.lexer = Lexer(source)
        self.functions: dict[str, Function] = {}
        self.globals: list[GlobalDecl] = []

    def parse(self) -> tuple[dict[str, Function], list[GlobalDecl]]:
        while self.lexer.peek() is not None:
            self._skip_qualifiers()
            type_or_name = self.lexer.take()
            if type_or_name not in self.TYPES:
                raise SyntaxError(f"expected declaration type, got {type_or_name!r}")
            if self.lexer.maybe("&"):
                pass
            name = self.lexer.take()
            if self.lexer.peek() == "(":
                function = self._parse_function(name)
                self.functions[function.name] = function
            else:
                self.globals.append(self._parse_global(name))
        return self.functions, self.globals

    def _skip_qualifiers(self) -> None:
        while self.lexer.peek() in self.QUALIFIERS:
            self.lexer.take()

    def _parse_global(self, name: str) -> GlobalDecl:
        expr: Any = ("literal", UNDEFINED)
        if self.lexer.maybe("="):
            expr = self._parse_expr()
        self.lexer.take(";")
        return GlobalDecl(name, expr)

    def _parse_function(self, name: str) -> Function:
        self.lexer.take("(")
        params: list[Param] = []
        if self.lexer.peek() != ")":
            while True:
                self._skip_qualifiers()
                token = self.lexer.take()
                if token not in self.TYPES:
                    raise SyntaxError(f"expected parameter type, got {token!r}")
                by_ref = self.lexer.maybe("&")
                params.append(Param(self.lexer.take(), by_ref))
                if not self.lexer.maybe(","):
                    break
        self.lexer.take(")")
        body = self._parse_block()
        return Function(name, params, body)

    def _parse_block(self) -> list[Any]:
        self.lexer.take("{")
        statements: list[Any] = []
        while self.lexer.peek() != "}":
            statements.append(self._parse_statement())
        self.lexer.take("}")
        return statements

    def _parse_statement(self) -> Any:
        token = self.lexer.peek()
        if token == "if":
            return self._parse_if()
        if token == "return":
            self.lexer.take()
            expr = None if self.lexer.peek() == ";" else self._parse_expr()
            self.lexer.take(";")
            return ("return", expr)
        if token in self.TYPES:
            self.lexer.take()
            name = self.lexer.take()
            expr = ("literal", UNDEFINED)
            if self.lexer.maybe("="):
                expr = self._parse_expr()
            self.lexer.take(";")
            return ("var", name, expr)

        expr = self._parse_expr()
        if expr[0] == "var" and self.lexer.maybe("="):
            value = self._parse_expr()
            self.lexer.take(";")
            return ("assign", expr[1], value)
        self.lexer.take(";")
        return ("expr", expr)

    def _parse_if(self) -> Any:
        self.lexer.take("if")
        self.lexer.take("(")
        condition = self._parse_expr()
        self.lexer.take(")")
        then_body = self._parse_block()
        else_body: list[Any] = []
        if self.lexer.maybe("else"):
            else_body = self._parse_block()
        return ("if", condition, then_body, else_body)

    def _parse_expr(self, min_precedence: int = 0) -> Any:
        left = self._parse_primary()
        precedence = {"||": 1, "&&": 2, "|": 3, "^": 4, "&": 5, "==": 6, "!=": 6, "+": 7, "-": 7, "*": 8, "/": 8, "%": 8}
        while self.lexer.peek() in precedence and precedence[self.lexer.peek()] >= min_precedence:
            op = self.lexer.take()
            right = self._parse_expr(precedence[op] + 1)
            left = ("binary", op, left, right)
        return left

    def _parse_primary(self) -> Any:
        token = self.lexer.take()
        if token == "(":
            expr = self._parse_expr()
            self.lexer.take(")")
            return expr
        if token == "(:":
            name = self.lexer.take()
            self.lexer.take(":)")
            return ("closure", name)
        if token in {"+", "-"}:
            return ("unary", token, self._parse_primary())
        if re.fullmatch(r"0[xX][0-9a-fA-F]+|\d+", token):
            return ("literal", int(token, 0))
        if token == "UNDEFINED":
            return ("literal", UNDEFINED)
        if self.lexer.peek() == "(":
            self.lexer.take("(")
            args: list[Any] = []
            if self.lexer.peek() != ")":
                while True:
                    args.append(self._parse_expr())
                    if not self.lexer.maybe(","):
                        break
            self.lexer.take(")")
            return ("call", token, args)
        return ("var", token)


class Environment:
    def __init__(self, parent: Environment | None = None):
        self.parent = parent
        self.values: dict[str, Ref] = {}

    def define(self, name: str, value: Any = UNDEFINED) -> None:
        self.values[name] = Ref(value)

    def bind_ref(self, name: str, ref: Ref) -> None:
        self.values[name] = ref

    def ref(self, name: str) -> Ref:
        if name in self.values:
            return self.values[name]
        if self.parent is not None:
            return self.parent.ref(name)
        raise NameError(name)


class ScriptRuntime:
    def __init__(self, builtins: dict[str, Callable[..., Any]] | None = None):
        self.functions: dict[str, Function] = {}
        self.globals = Environment()
        self.builtins = dict(builtins or {})

    @classmethod
    def from_source(cls, source: str, defines: dict[str, str] | None = None, builtins: dict[str, Callable[..., Any]] | None = None) -> ScriptRuntime:
        parser = Parser(preprocess_source(source, defines))
        functions, globals_ = parser.parse()
        runtime = cls(builtins)
        runtime.functions = functions
        for declaration in globals_:
            runtime.globals.define(declaration.name, runtime._eval(declaration.expr, runtime.globals))
        return runtime

    def call(self, name: str, *args: Any) -> Any:
        if name not in self.functions:
            raise NameError(f"function not found: {name}")
        function = self.functions[name]
        if len(args) != len(function.params):
            raise TypeError(f"{name} expects {len(function.params)} args, got {len(args)}")

        env = Environment(self.globals)
        for param, arg in zip(function.params, args, strict=True):
            if param.by_ref:
                env.bind_ref(param.name, arg if isinstance(arg, Ref) else Ref(arg))
            else:
                env.define(param.name, arg.value if isinstance(arg, Ref) else arg)

        signal = self._execute_block(function.body, env)
        return signal.value if isinstance(signal, ReturnSignal) else None

    def _execute_block(self, statements: list[Any], env: Environment) -> ReturnSignal | None:
        for statement in statements:
            signal = self._execute(statement, env)
            if isinstance(signal, ReturnSignal):
                return signal
        return None

    def _execute(self, statement: Any, env: Environment) -> ReturnSignal | None:
        kind = statement[0]
        if kind == "assign":
            env.ref(statement[1]).value = self._eval(statement[2], env)
        elif kind == "var":
            env.define(statement[1], self._eval(statement[2], env))
        elif kind == "expr":
            self._eval(statement[1], env)
        elif kind == "return":
            return ReturnSignal(None if statement[1] is None else self._eval(statement[1], env))
        elif kind == "if":
            branch = statement[2] if self._eval(statement[1], env) else statement[3]
            return self._execute_block(branch, env)
        else:
            raise RuntimeError(f"unsupported statement: {kind}")
        return None

    def _eval(self, expr: Any, env: Environment) -> Any:
        kind = expr[0]
        if kind == "literal":
            return expr[1]
        if kind == "var":
            return env.ref(expr[1]).value
        if kind == "closure":
            return expr[1]
        if kind == "unary":
            value = self._eval(expr[2], env)
            return value if expr[1] == "+" else -value
        if kind == "binary":
            return self._apply_binary(expr[1], self._eval(expr[2], env), self._eval(expr[3], env))
        if kind == "call":
            args = [self._eval(arg, env) for arg in expr[2]]
            if expr[1] in self.builtins:
                return self.builtins[expr[1]](*args)
            return self.call(expr[1], *args)
        raise RuntimeError(f"unsupported expression: {kind}")

    @staticmethod
    def _apply_binary(op: str, left: Any, right: Any) -> Any:
        if op == "+":
            return left + right
        if op == "-":
            return left - right
        if op == "*":
            return left * right
        if op == "/":
            return int(left / right)
        if op == "%":
            return left % right
        if op == "&":
            return left & right
        if op == "^":
            return left ^ right
        if op == "|":
            return left | right
        if op == "==":
            return int(left == right)
        if op == "!=":
            return int(left != right)
        if op == "&&":
            return int(bool(left) and bool(right))
        if op == "||":
            return int(bool(left) or bool(right))
        raise RuntimeError(f"unsupported operator: {op}")
