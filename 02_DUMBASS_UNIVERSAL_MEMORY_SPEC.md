# 02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md

## The Database & Universal Memory Bank Across Split Services (#d.u.m.b.a.s.s.)

### 1. Document Authority & Supersession

Establishes the official architecture for the #d.u.m.b.a.s.s. memory subsystem across mobile edge devices, local servers, and cloud instances. Envelops, unifies, and supersedes: SQLite.txt; Attaching #dumbass and Æsop-Xi; Continual harness online adaptation for self-improving foundation agents.txt; The Global Information Layer & Storage Matrix.txt; Mem0 architecture notes (Folder 4).

---

### 2. Core Operational Law: The Integrated Memory Engine

| Component | Architectural Responsibility | Hardware & Network Binding |
|---|---|---|
| mem0 | In-session episodic state & user habits | Node Alpha (Mobile RAM) |
| OB1 Protocol | Ground-truth static retrieval protocols via MCP | Ubiquitous Network-Wide |
| OmniRoute Gateway | Data routing, memory extraction tap, token conservation & cost routing | Localhost Port 20128 |
| Reasoning Bank | Multi-model execution ledger & crash recovery | JSON / KV Store |
| SQLite | Embedded zero-latency relational/KV tables | Node Alpha Flash / Disk |
| PostgreSQL | Authoritative relational & vector persistence | Node Beta (Jetson Server) |
| Continual Harness | Online reset-free self-improvement loop | Supervisory State Machine |

#### Beginner-proof explanation — how the layers work together

1. **mem0** — remembers what you said 2 minutes ago and how you like your answers structured; short-term personalization so the model doesn't ask the same questions repeatedly.
2. **OB1 (Open Brain Protocol)** — when the model needs a 500-page Qualcomm manual or system schema, it queries OB1 over MCP; OB1 extracts the exact grounded paragraphs so the model never has to guess or hallucinate.
3. **OmniRoute** — core data routing and memory extraction layer on port 20128. Beyond token caching and routing between local NPU/Jetson/cloud endpoints, it's an asynchronous memory tap on every request/response — extracting candidate trajectories, tool invocation traces, and failure patterns directly into Reasoning Bank and mem0 without adding inference latency.
4. **Reasoning Bank** (`active_execution_paths.json`) — when an agent runs a 10-step task, it writes each step to this ledger. If the process dies at step 6, on reboot it reads the ledger and resumes at step 7 without losing state.
5. **SQLite** — local database on the phone, zero setup, zero network, sub-5ms queries.
6. **PostgreSQL** — master database on the Jetson server, backs up all history, code graphs, and enterprise records network-wide.
7. **Continual Harness** — lets agents learn and refine prompt instructions during live execution; if an update causes an error, an automated snapshot rollback fires immediately. The base system prompt is never modified.

---

### 3. Universal JSONL Marker Schema

Every asset indexed by #dumbass receives an atomic JSONL marker record matching this schema:

```json
{
  "record_id": "MEM_A102_20260904_SCHEMA",
  "document_path": "02_wiki_md/architectures/npu_topology.md",
  "tier": 2,
  "category": "TECHNICAL_REFERENCE",
  "metadata": {
    "title": "NPU Memory Topology & FastRPC Bindings",
    "description": "Zero-copy shared memory allocation for Snapdragon 8 Elite Hexagon NPU.",
    "content_hash": "e3b0c44298fc1c14",
    "file_size_bytes": 4820,
    "last_modified": "2026-09-04T07:45:00Z"
  },
  "retrieval_tokens": ["qualcomm", "qnn", "fastrpc", "asharedmemory", "dma_buf", "htp"],
  "entry_points": {
    "mcp_method": "knowledge.retrieve",
    "cli_command": "/skill run npu-topology"
  }
}
```

---

### 4. Git Orchestration & Cross-Repo Sync Hook

To keep #dumbass (novae-xorpus) and consumer repositories (like aesop-xi) synchronized across sessions without duplication, use an automated Git post-commit hook at `~/repos/aesop-xi/.git/hooks/post-commit` with `VAULT_DIR="${HOME}/novae-xorpus"` and a consumer-side sync step. *(Source snippet cuts off at `CONSUMER_DIR="${HOME}/repos/ae...` — the rest of the hook script and any sections after §4 are not captured here.)*

---

*Source: Google Drive `__NovÆxorpus_LIVING_MASTER_CANON/02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` (id `1r3MevOs_bkkBj4oNjnqvWUOn9gUZAz6y8OYTtk7S8jU`). Placed 2026-09-07 from a search-result content snippet — the post-commit hook script and anything past §4 cut off. Re-fetch the full document to complete this file. The 7-subsystem table here is the authority `_dumbass_universal_memory/` in this repo should match — as of this placement pass only `sqlite/` was fully built out; `postgres/`, `mem0/`, `ob1_protocol/`, `omniroute/`, `reasoning_bank/`, `continual_harness/` still need their own README + schema/config content from this spec.*
