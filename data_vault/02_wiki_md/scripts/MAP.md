# MAP — scripts

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `scripts`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-EXECUTABLE — docs for actual scripts (mirrors 04_skills_runtime/extracted_tools/).

## Contents

- [[setup-aesop-sh]] — _(no description yet)_
- [[convert-raw-to-markdown-py]] — _(no description yet)_
- [[generate-jsonl-markers-py]] — _(no description yet)_
- [[gcp-cross-account-handshake-sh]] — _(no description yet)_
- [[run-audit-sh]] — Red Auditor daemon — documented here, code lives outside visible tree.
- [[boot-sh]] — Reboot execution flow (boot.sh -> tmux llm -> ow).
- [[system-housekeeper-sh]] — _(no description yet)_
- [[agent-panel-sh]] — _(no description yet)_
- [[npu-manager-py]] — _(no description yet)_
- [[compile-manifest-py]] — _(no description yet)_
- [[doc-to-skill-and-tool-py]] — _(no description yet)_
- [[export-drive-docs-js]] — _(no description yet)_
- [[log-builder-py]] — _(no description yet)_

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
