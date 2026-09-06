# MAP — qualcomm

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `vendors/qualcomm`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

MAJOR. Reference implementation for vendor-workspace derive-from-function design.

## Contents

- [[qairt-sdk]] — QAIRT SDK docs, headers, HTP specs.
- [[genie-bundles]] — Pre-compiled Genie bundles from QAI Hub.
- [[hexagon]] — NPU v79/v73, INT8 TOPS, FastRPC, DMA-BUF.
- [[qat]] — Quantization Aware Training — used with GenieX.
- [[models]] — Qualcomm-hosted models (Qwen3.5-0.8B QAI, LiteHRNet, Phi-4-Mini).

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
