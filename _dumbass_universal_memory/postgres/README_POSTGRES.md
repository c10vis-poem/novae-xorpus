# PostgreSQL — Node Beta Authoritative Store

Host: NVIDIA Jetson Orin Nano Super (8GB / CUDA), Ubuntu Server LTS headless.
Role: authoritative relational & vector persistence — backs up all history, code graphs, and enterprise records network-wide (per `00_DEFINITIVE_MASTER_SPECIFICATION_V3_COMPLETE.md` §5, MCP infra table; `02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` §2).

- Extensions required: `pgvector`, `pgcrypto`.
- Reached over MCP as the "PostgreSQL MCP Server (OB1 deep technical grounding)" — see `03_DUAL_OPERATIONAL_HARNESS_AND_MCP_SPEC.md` §4.
- Access pattern: subsystems hit their own local cache first (SQLite on Node Alpha); PostgreSQL is queried only for cross-cutting retrieval or deep embedding search (Core Memory Law 3, `_dumbass_universal_memory/README.md`).

See `migrations_v1.sql` in this directory for the starting schema. Network topology and Jetson host access settings were not captured from source this pass — the source spec cut off before this subsystem's own dedicated section; fill in from the live Drive doc when read in full.
