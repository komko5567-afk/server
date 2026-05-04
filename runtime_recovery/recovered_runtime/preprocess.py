from __future__ import annotations


def preprocess_source(source: str, defines: dict[str, str] | None = None) -> str:
    """Apply the small guard-style preprocessor subset seen in recovered scripts."""

    active_defines = dict(defines or {})
    include_stack: list[bool] = [True]
    output: list[str] = []

    for raw_line in source.splitlines():
        stripped = raw_line.strip()
        if not stripped.startswith("#"):
            if all(include_stack):
                output.append(raw_line)
            continue

        parts = stripped.split(maxsplit=1)
        directive = parts[0]
        argument = parts[1] if len(parts) > 1 else ""

        if directive == "#ifndef":
            include_stack.append(argument not in active_defines)
        elif directive == "#ifdef":
            include_stack.append(argument in active_defines)
        elif directive == "#define":
            if all(include_stack):
                name_value = argument.split(maxsplit=1)
                if name_value:
                    active_defines[name_value[0]] = name_value[1] if len(name_value) > 1 else "1"
        elif directive == "#endif":
            if len(include_stack) == 1:
                raise ValueError("unexpected #endif")
            include_stack.pop()
        elif all(include_stack):
            output.append(raw_line)

    if len(include_stack) != 1:
        raise ValueError("unterminated preprocessor block")
    return "\n".join(output) + "\n"
