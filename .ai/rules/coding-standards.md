# IBIS ABL Coding Standards

## MCP
For openedge code, always use the OpenEdge MCP server.

## Standards
- use lowercase for ABL keywords, statements, and functions.
- use camel case for variables
- use Pascal Case for class names
- ALWAYS use the var statement to declare variables (unless explicitly told otherwise)
- use full keywords. int and char are full keywords, use int and char instead of integer and character.
- indent code with 2 spaces, not tabs.
- don't use keyword as a variable name.
- no prefixes for variable names, use descriptive names instead. No # in var names.
- escape backslashes: "~\"
- put if then (and do:) on one line as much as possible

```abl
if <expr> then
  <statement>
else
  <statement>

if <expr> then do:
  <statement>
end.
else do:
  <statement>
end.
```

- omit input keyword for parameter definitions (function and methods)
- don't align var declarations
- no assign statements, unless writing the primary db key
- use +=, -=, etc for expressions like i = i + 1 (so: i += 1)
