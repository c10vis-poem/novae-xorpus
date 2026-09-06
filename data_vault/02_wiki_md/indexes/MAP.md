# MAP — indexes

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `indexes`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-CROSS-CUTTING-VIEW — MOCs re-slicing everything.

## Contents

- [[by-doc-type]] — 5 doc types: Tool / Skill / Reference / Memory / Data.
- [[by-vendor]] — _(no description yet)_
- [[by-agent]] — _(no description yet)_
- [[by-harness]] — _(no description yet)_
- [[by-model]] — _(no description yet)_
- [[by-node]] — Everything on Alpha vs Beta vs Gamma vs Delta.
- [[by-tier]] — cross-tier lookups (raw -> wiki -> skill -> log).
- [[by-project]] — _(no description yet)_
- [[new-since-7d]] — rolling 7-day index.
- [[new-since-24h]] — _(no description yet)_
- [[open-questions]] — _(no description yet)_

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
