# MAP — prime-agent

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `harnesses/prime-agent`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

Governs on-device open-weight models via RLM.

## Contents

- [[overview]] — Prime Agent overview.
- [[rlm-loop]] — Recursive Language Model + persistent Python REPL.
- [[continual-harness]] — State refinement + rollback.
- [[openai-client-config]] — Points to OmniRoute localhost:20128.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
