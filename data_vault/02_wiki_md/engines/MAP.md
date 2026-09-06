# MAP — engines

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `engines`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-ENGINE — wrappers around runtime + model + scheduler.

## Contents

- [[genie-x-engine]] — Scheduler/serving surface over genie-x runtime.
- [[moonshine-onnx-engine]] — STT engine.
- [[kokoro-tts-engine]] — TTS engine.
- [[piper-tts-engine]] — Alt TTS engine.
- [[silero-vad-engine]] — VAD engine.
- [[llama-server]] — llama.cpp HTTP server wrapper.
- [[openwiki-tui-engine]] — OpenWiki TUI (multi-profile: file_administrator, oeracle_helpdesk).

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
