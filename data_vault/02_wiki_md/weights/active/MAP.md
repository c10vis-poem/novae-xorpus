# MAP — active

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `weights/active`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

Currently loaded/loadable on-device.

## Contents

- [[qwen-3.5-0.8b-qai-hub-genie]] — Executor — NPU-pinned via QAIRT.
- [[qwen-3.5-9b-unsloth-gguf-q4_0]] — Query — NPU via GenieX.
- [[qwen-3.5-2b-q4_0-gguf]] — ALREADY ON DISK per Lex-Novi discovery (1.21 GB).

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
