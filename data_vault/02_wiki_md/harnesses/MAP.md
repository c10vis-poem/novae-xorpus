# MAP — harnesses

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `harnesses`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-HARNESS — outer control loops. See modular hot-swap spec (4 interfaces).

## Contents

- [[ecc]] — Everything Claude Code — governs Claude Code CLI sessions.
- [[prime-agent]] — Governs on-device open-weight models via RLM.
- [[deepseek]] — NEW per operator.
- [[gsd-v2]] — Build-phase execution engine (fresh context per task, git branch-per-slice).
- [[pocock-skills]] — Planning layer (grill-with-docs, to-spec, to-tickets, TDD, code-review).
- [[honey-for-devs]] — Dev-focused skill harness.
- [[aider]] — Aider workspace agent.
- [[smol-agents]] — Low-overhead script-fragment generator pods.
- [[nano-agents]] — Nano agent building.
- [[turbo-quant-swarms]] — Quantized reasoning models for high-speed traffic.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
