# MAP — protocols

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `protocols`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-PROTOCOL — specs, not code.

## Contents

- [[aesop-xi]] — THE ethical arbitration protocol (Agentic Execution Split Ops).
- [[mcp]] — Model Context Protocol spec.
- [[manifest-jsonl-schema]] — Universal JSONL marker schema.
- [[skill-onboarding-schema]] — AESOP_XI_Skill_Onboarding_Template JSON schema.
- [[w5h-matrix]] — Who/What/When/Where/Why/How operational lens.
- [[rlvr]] — Reinforcement Learning with Verifiable Rewards.
- [[kag-recurse]] — Knowledge-Augmented-Generation recursive loop spec.
- [[rag-pipeline]] — Retrieval-Augmented-Generation pipeline.
- [[adb-loopback]] — The laptop trick — ADB-to-WebSocket / UNIX-host tunnel.
- [[unix-socket-ipc]] — AF_UNIX + SCM_RIGHTS FD-passing between daemons.
- [[extraction]] — DATA EXTRACTION protocols.
- [[memory-pipeline-order]] — OmniRoute -> Reasoning Bank -> OB1 -> mem0 -> daemons/models.
- [[droiddesk-workstation]] — DroidDesk workstation protocol.
- [[incognito-red-audit]] — 7-invariant isolation contract.
- [[cost-checking]] — Cost audit protocol.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
