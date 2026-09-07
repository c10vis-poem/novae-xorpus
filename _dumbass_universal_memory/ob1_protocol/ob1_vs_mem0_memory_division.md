# OB1 vs mem0 — Memory Division

Both are memory layers; they don't overlap:

| | OB1 | mem0 |
|---|---|---|
| Scope | Ground-truth static retrieval (docs, schemas, manuals) | In-session episodic state, user habits |
| Persistence | Durable, PostgreSQL-backed | Ephemeral, RAM-resident on Node Alpha |
| Access | Over MCP, network-wide | Local to the active session |
| Coordinated via | Direct MCP call | OmniRoute's async memory tap |

Both feed from and are fed by OmniRoute (`omniroute/README` — the async memory-extraction tap dispatches candidate facts into whichever of the two actually owns that kind of fact). Neither is a substitute for the other; a fact that's "what the user always wants" is mem0's, a fact that's "what the Qualcomm manual says" is OB1's.
