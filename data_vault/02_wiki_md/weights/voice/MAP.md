# MAP — voice

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `weights/voice`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.



## Contents

- [[moonshine-small-onnx]] — STT. NOTE: ~10s hard input ceiling, silent failure past 9.5s.
- [[kokoro-82m]] — TTS.
- [[sherpa-onnx]] — TTS alt.
- [[silero-vad]] — VAD (ONNX classifier, voice-stack).
- [[parakeet]] — NVIDIA STT alt.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
