# Continual Harness Policy

Role: online reset-free self-improvement loop, supervisory state machine (`02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` §2).

"Allows agents to learn and refine prompt instructions during live execution. If an update causes an error, it immediately triggers an automated snapshot rollback. The base system prompt is never modified."

## Rules

1. Refinement is layered on top of the base system prompt via `/refine` — never edits the base prompt in place.
2. Every refinement takes a snapshot before applying.
3. An error following a refinement triggers immediate automated rollback to the last good snapshot — no manual intervention required to recover.
4. This is the mechanism referenced as the state layer under Prime Agent in Mode B (`03_DUAL_OPERATIONAL_HARNESS_AND_MCP_SPEC.md` §3).
