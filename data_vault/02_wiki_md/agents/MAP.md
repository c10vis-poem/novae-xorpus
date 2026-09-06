# MAP — agents

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `agents`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-AGENT — personas under harnesses. manifest: harness, model, memory-scope, tool-allowance, on-node.

## Contents

- [[oeracle]] — Oeracle — on-device help-desk oracle (Qwen 9B on Hexagon).
- [[file-administrator]] — NovusAexenti-Housekeeper (GLM-5.2 file admin).
- [[cross-auditor]] — Home-node public auditor (script collector + log aggregator).
- [[red-auditor]] — INCOGNITO — link only. Actual spec lives outside visible tree per isolation contract.
- [[early-trend-scraper]] — Daily scraper against dev news + GitHub trends.
- [[home-assistant-auditor]] — Home Assistant cross-agent auditor.
- [[it-helpdesk]] — IT Help Desk & Manual Operator.
- [[web-ingestion-monitor]] — Tracks upstream model/tool/repo changes.
- [[npu-inference-manager]] — Balances weight offloading Alpha<->Beta<->Cloud.
- [[executor-0.8b]] — 0.8B executor persona (fast task exec).
- [[query-9b]] — 9B query persona (meta-prompt compilation, cloud tool calls).
- [[frontier-callers]] — Personas allowed to call frontier APIs — permission gated.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
