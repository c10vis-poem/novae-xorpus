# MAP — candidates

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `weights/candidates`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

To evaluate, not yet chosen.

## Contents

- [[gemma-4-12b-it-qat-ud-q4_k_xl]] — 12B for Node Beta (Jetson, 8GB tight) — operator plan.
- [[gemma-4-e4b-qai-hub]] — E4B (Qualcomm-hosted).
- [[phi-4-mini-qai-hub]] — Help-desk agent tier.
- [[granite-mini]] — Help-desk agent tier.
- [[qwen-3.5-4b]] — Fallback tier if 9B chokes.
- [[twin-9b]] — VERIFY SPELLING — may be mishear.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
