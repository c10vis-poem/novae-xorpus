# MAP — vendors

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `vendors`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-VENDOR — first-class. Each vendor gets a full sub-tree.

## Contents

- [[google]] — MAJOR cut per operator directive.
- [[qualcomm]] — MAJOR. Reference implementation for vendor-workspace derive-from-function design.
- [[nvidia]] — MAJOR.
- [[github]] — MAJOR — operator has forks + custom repos.
- [[anthropic]] — _(no description yet)_
- [[primeintellect]] — _(no description yet)_
- [[deepseek]] — NEW — coming harness per operator.
- [[unsloth]] — Fine-tuning docs, GGUF export, quantization guides.
- [[liquid-ai]] — LFM2.5-8B-A1B reference.
- [[together]] — OSCAR (2-bit attention-aware KV cache) research.
- [[mattpocock]] — mattpocock/skills (grill-with-docs, etc).
- [[kepano]] — obsidian-skills.
- [[affaan-m]] — ECC (Everything Claude Code).
- [[graphify-labs]] — Graphify (AST -> knowledge graph).
- [[openrouter]] — OpenRouter API, GLM 5.2 access, model catalog.
- [[z-ai]] — GLM 5.2 model docs, pricing, 1M context notes.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
