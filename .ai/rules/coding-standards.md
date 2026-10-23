# ABL Rules for Agents
Apply these rules to all ABL changes.

## MCP servers
- Use `openedge-abl-mcp-server` for ABL syntax.
- use `openedge-schema` for database schema related questions
- use `openedge-xref` for cross reference (sources, table/field/index usage)

## Style and names
- Write code and comments in American English; domain terms may remain local.
- Use lowercase ABL keywords, lowercase directories, and lowercase `.p`, `.i`, and `.w` filenames.
- Indent with 2 spaces; never tabs.
- Use PascalCase for classes, methods, and public/protected properties; use camelCase for private members.
- Name classes as nouns. Use a meaningful suffix such as `Helper`, `Processor`, or `Manager` only for a static utility class.
- Avoid abbreviations and uncommon acronyms. Use PascalCase for acronyms except two-letter acronyms, for example `HttpVerbs` and `IOStream`.
- Do not prefix ordinary variables or parameters. `ptr` is allowed for `memptr`, `raw` for `raw`; prefer an explanatory suffix such as `Bytes` where useful.
- Prefix buffers with `b-` (`b-customer`, `b-customer2`), temp-tables with `tt`, datasets with `ds`, and interfaces with `I`.

## ABL code
- Use symbolic comparisons: `=`, `<>`, `<`, `<=`, `>`, `>=`; parenthesize non-trivial expressions.
- Use `var` for `no-undo` variables and compound assignments (`+=`, `-=`, `*=`, `/=`) when applicable.
- use `var char` and `var int` instead of `var character` and `var integer` 
- Keep `if ... then do:` and `else do:` on one line. Extract complex boolean expressions into a well-named logical variable.
- Prefer pure functions. Pass required state as parameters instead of reading globals.
- Prefer functions to internal procedures where they express the operation naturally. Name the result variable after the function.
- Use `function Name(...)` on one line and close it with `end function.  // Name`.
- Use `f(x, y)`, never `f (x)` or `f(x,y)`.

## Imports, errors, and procedures
- Put each `using` on its own line; never use wildcard imports. Use `from assembly` for .NET imports and never `from propath`.
- Avoid .NET. When unavoidable, isolate it behind an ABL wrapper.
- Start every `.cls` and `.p` with `block-level on error undo, throw.`
- A `.p` must be either persistent or non-persistent, never both. A non-persistent procedure must throw when run persistently.
- Mark non-public internal procedures in persistent procedures as `private`.
- Close internal procedures as `end procedure.  // ProcedureName`.
- Keep includes limited to declarations (such as temp-tables and datasets); never put business logic in an include. Do not quote include paths.

## Platform and tests
- Preserve exact filename and class-name casing. Use `/` in ABL paths. Escape a literal backslash in a string with `~`.
- Define enum members with explicit integer values. Enum names are singular unless flags and never use an `Enum` prefix or suffix.
- Add or update unit tests for changed class behavior. Place a class test alongside its class, name it `ClassName_UT.cls`, and use classes rather than `.p` test programs.
- Use `_BeforeAll`, `_BeforeEach`, `AfterEach`, and `AfterAll` lifecycle methods. Do not use deprecated lifecycle annotations.
- Name `@Test` methods in descriptive snake_case.

