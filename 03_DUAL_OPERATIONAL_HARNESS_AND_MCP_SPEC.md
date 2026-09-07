# 03_DUAL_OPERATIONAL_HARNESS_AND_MCP_SPEC.md

## Dual Operational Modes, Prime Agent RLM Harness, MCP Infrastructure & AST Code Graphs

### 1. Document Scope & Supersession

Defines execution loops, model harnesses, MCP server deployments, and code-graph analytical pipelines. Envelops, unifies, and supersedes: master-execution-router, skill_manifest.json, "Data dump and skill extraction", tool harness specs in 5-Potential.34.ARCH.MATRIX-(5-S.F.'s-34-files).

---

### 2. Dual Operational Modes: Complete Separation of Concerns

| | Mode A: Terminal Developer Sessions | Mode B: Sovereign Edge Assistant |
|---|---|---|
| Primary driver | Claude Code CLI | Local model weights |
| Governing harness | ECC (Everything Claude Code) | Prime Agent (Prime Intellect / RLM loop) |
| Operational arena | Terminal CLI | Snapdragon NPU |
| Core skill suite | honey-crush, nexus-mapper, ecc-planner, Pocock | Python REPL Continual Harness (`/refine`) |

When the Edge Assistant invokes Claude Code: **discrete subprocess invocation, zero nested wrapping.** Prime Agent calls Claude Code CLI strictly as an external utility; Claude Code executes independently, returns output text, terminates. No nested harness wrapping or state conflicts.

- Mode A: at a terminal typing commands, Claude Code is the harness; ECC gives it honey-crush (reading massive docs) and nexus-mapper (mapping code files); Prime Agent is off.
- Mode B: on the phone via voice/screen vision, local open weights (Qwen 3.5) run on the Snapdragon NPU; Prime Agent treats context as variables and tools as callable Python functions.
- The bridge: on-device Prime Agent needing Claude runs `claude --print "fix this bug"` as a CLI tool, captures the answer, continues. Neither fights over session ownership.

---

### 3. What Prime Agent Operates Off Of

1. Persistent Python/IPython kernel — tools loaded into the Python namespace as functions; the agent writes small code blocks to call them instead of massive JSON schema handoffs.
2. OpenAI-compatible client — connects over HTTP, routes through OmniRoute on `http://localhost:20128/v1`, which handles prompt caching and token conservation before forwarding to GenieX on the NPU.
3. The Continual Harness — a state layer refining supplemental prompts and skill references via `/refine` with automated rollback snapshots.

---

### 4. Model Context Protocol (MCP) Server Infrastructure

| Local Node Alpha (Node.js) | Remote Node Beta (Server Mesh) |
|---|---|
| 1. `@modelcontextprotocol/server-filesystem`, path `~/novae-xorpus` | 1. PostgreSQL MCP Server (OB1 deep technical grounding) |
| 2. SQLite MCP Server (Python), path `03_recall_cache/kv_store` | 2. AST Repository Code Graph Server (PyGraphify / Graphify AST) |

Filesystem MCP runs via Node.js LTS in the background:
```
npx -y @modelcontextprotocol/server-filesystem ~/novae-xorpus
```
Exposes the vault safely to agents without granting access to root Android system files.

---

### 5. Code Review Graph, Knowledge Graph & NotebookLM Pipeline

1. PyGraphify/Graphify — ingests raw code repositories, parses ASTs, maps which functions call which classes.
2. OpenWiki TUI — writes these relationships into clean Markdown notes inside `02_wiki_md/` with bidirectional links (`[[class_a]]` ↔ `[[class_b]]`).
3. High-speed cache — dumps pre-tokenized chunks into `03_recall_cache/jsonl/` and SQLite tables for instant retrieval.
4. NotebookLM (notebooklm-py) — deep analytical engine for multi-*(source truncated here)*.

---

*Source: Google Drive `__NovÆxorpus_LIVING_MASTER_CANON/03_DUAL_OPERATIONAL_HARNESS_AND_MCP_SPEC.md` (id `1PRMqL3fTZgO_lMZowhOcjyURLTAdB5tn9XId89xoelM`). Placed 2026-09-07 from a search-result content snippet — cuts off mid-sentence in §5. Re-fetch the full document to complete this file.*
