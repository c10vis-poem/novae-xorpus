# OB1 (Open Brain Protocol) — MCP Spec

Role: ground-truth static retrieval protocol, ubiquitous network-wide, over MCP (`02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` §2).

"When the model needs to reference a 500-page Qualcomm manual or system schema, it queries OB1 over MCP. OB1 extracts the exact grounded paragraphs so the model never has to guess or hallucinate."

## MCP methods

- `knowledge.retrieve` — entry point referenced in the JSONL marker schema (`02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` §3, `entry_points.mcp_method`). Takes retrieval tokens, returns the grounded passage(s) plus source path.
- `knowledge.record` — write path for new grounded facts extracted during ingestion (referenced in `_dumbass_universal_memory/manifest.jsonl`'s description of this file; exact request/response shape not yet captured from source — fill in when the full Drive doc for OB1 specifically is located and read).

## Backing store

PostgreSQL on Node Beta (`postgres/migrations_v1.sql`, `memory_records` table) is the durable store OB1 queries against.
