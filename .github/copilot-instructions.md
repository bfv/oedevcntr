# OpenEdge ABL repository instructions

## Sources of truth

- Follow [coding-standards.md](../.ai/rules/coding-standards.md) for every ABL change.
- Follow [testing.md](../.ai/rules/testing.md) to design, implement and validate tests.
- Treat existing code and project documentation as the source of truth for business rules, database schema and naming. State missing context or assumptions explicitly.

## OpenEdge knowledge

- For OpenEdge or ABL language questions, use the `openedge-abl-mcp-server` tools before proposing code that relies on language semantics, framework behavior or a version-specific API.
- Use the MCP collection that matches the target OpenEdge version. If the version is unknown, ask for it or state that the `latest` collection was used.
- Use the Riverside OpenEdge ABL language server for symbol navigation and compiler feedback when available.

## Changing code

- Start with the smallest change that satisfies the request. Do not introduce new architectural layers, shared utilities or dependencies without explaining why existing patterns are insufficient.
- Before editing, identify affected callers, database effects, transaction boundaries, error handling and relevant includes.
- Keep business behavior unchanged during refactoring unless the request explicitly changes it.
- For every non-trivial proposal, provide the assumptions, affected files, risks and a concrete validation approach.
- Compile changed ABL files and run the relevant existing tests or checks after a change. Do not claim validation that was not performed.

## Output

- Write ABL code that follows the local standards and existing repository patterns.
- Do not invent table fields, procedures, classes, include files, APIs or business rules. Mark required missing information clearly.
- Explain deviations from these instructions and from the documented architecture before making them.
