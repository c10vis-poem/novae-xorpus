# MAP — memory-subsystem

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `memory-subsystem`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-MEMORY-COMPONENT — first-class top-level cut.

## Contents

- [[omniroute]] — AS MEMORY EXTRACTION LAYER (localhost:20128). Routing is a CONSEQUENCE of extraction, not the primary role.
- [[reasoning-bank]] — Multi-model execution ledger + crash recovery.
- [[ob1]] — Postgres vector protocol (Open Brain), ground-truth retrieval.
- [[mem0]] — In-session episodic state + user habits.
- [[sqlite]] — Embedded on-device KV + relational (sub-5ms).
- [[postgres]] — Authoritative relational + vector on Node Beta.
- [[kv-cache]] — KV cache spec vs SQL — KV = runtime attention tensors; SQL = persistent structured records.
- [[continual-harness]] — Reset-free online adaptation.
- [[graphify]] — AST + knowledge graph mapping.
- [[code-review-graph]] — Cross-agent graph code checking.
- [[notebooklm-py]] — Deep analytical query engine.
- [[honey-for-devs-mem]] — Memory hooks Honey exposes.
- [[nope-databank]] — Red Auditor negative reference set — link only, lives outside visible tree.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
