# MAP — runtimes

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `runtimes`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-RUNTIME — low-level executors. A runtime EXECUTES code.

## Contents

- [[qairt]] — libQnnHtp.so + env vars + genie-t2t-run CLI.
- [[genie-x]] — Wraps llama.cpp + GGML Hexagon backend + CLI.
- [[llama-cpp]] — Base llama.cpp + GGML Hexagon backend + haozixu/llama.cpp-npu fork.
- [[onnx-runtime]] — ORT + QNN Execution Provider for NPU.
- [[whisper-cpp]] — Voice STT runtime.
- [[cuda]] — CUDA on Jetson (Node Beta).
- [[node-js]] — Node.js LTS for MCP servers + OpenWiki + web tooling.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
