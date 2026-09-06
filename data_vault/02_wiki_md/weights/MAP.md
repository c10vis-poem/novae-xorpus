# MAP — weights

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `weights`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-MODEL — every weight file catalogued. manifest: repo id, quantization, size, on-disk-path, target-hardware.

## Contents

- [[active]] — Currently loaded/loadable on-device.
- [[candidates]] — To evaluate, not yet chosen.
- [[rejected]] — Evaluated and dropped, with reason.
- [[voice]] — _(no description yet)_
- [[vision]] — _(no description yet)_

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
