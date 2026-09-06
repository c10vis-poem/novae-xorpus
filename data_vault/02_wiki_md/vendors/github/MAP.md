# MAP — github

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `vendors/github`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

MAJOR — operator has forks + custom repos.

## Contents

- [[owned]] — c10vis-poem repos (novae-xorpus, aesop-xi, openwiki fork, claude-code-android, OB1, ECC-aesop).
- [[forked]] — Everything forked from upstream.
- [[watched]] — Upstream tracked (Anthropic MCP, Prime Agent, Graphify, obsidian-skills, mattpocock/skills).
- [[actions]] — GitHub Actions workflows, CI/CD configs.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
