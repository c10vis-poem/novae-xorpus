# Operator decisions — locked

Every entry is an operator ruling, dated. This file is append-only. Nothing here
gets reworded by an agent; if a decision changes, add a new dated entry that
supersedes the old one and mark the old one `SUPERSEDED`.

Hard rule 4 applies: **speaker attribution is content.** Operator phrasing is
preserved verbatim where quoted.

---

## 2026-09-05 — Phase 1-3 review rulings (11)

### 1. OmniRoute IS a memory extraction layer
> *"absolutely it's a memory extraction layer"*

The background agent's canon claimed OmniRoute is *"an Inference / Token Gateway …
**not** a memory extraction layer."* **That is overruled.** Routing is a
*consequence* of extraction, not the primary role. OmniRoute sits at
`localhost:20128` and extracts memory from every prompt/response passing through
it into the Reasoning Bank pipeline. Docs must say both: gateway AND extraction.

**Lives at:** `data_vault/02_wiki_md/memory-subsystem/omniroute/`

### 2. Red Agent isolation — pull it out of the visible tree entirely
A dot-folder (`.incognito_red_sandbox/`) is **not** isolation. It shows in `ls -a`,
in git, and in any `manifest.jsonl` enumerating the tier. The Red Agent's actual
spec, code and negative reference set (NopeDataBank) live **outside the visible
vault**. The vault exposes only a `red_verdict: pass|fail|n/a` field on trajectory
records.

**Lives at:** `data_vault/02_wiki_md/protocols/incognito-red-audit/` (contract only,
7 invariants + discoverability test). Agent entry is link-only at
`02_wiki_md/agents/red-auditor/`.

### 3. Beginner-Proof Standard — ADOPTED
Originally flagged as agent-self-imposed rather than operator-declared. Operator
adopted it formally.

> If a third-rate model or a beginner dev can't pick up the work and resume it,
> the code is broken.

All architecture and code carries reasoning, the problem it solves, and the data
flow. Non-negotiable.

### 4. 5+1 tier vault structure — CONFIRMED
Raw sources → wiki → recall cache → skills runtime → episodic logs, **+1**
working/ephemeral. The "5" the operator kept referring to is this outer tier
count, *not* the wiki's interior subfolder schema. Those are two different things
and conflating them caused the v1 proposal's error.

**Lives at:** `data_vault/` (see `data_vault/MAP.md`)

### 5. POCKET-35B — DROPPED
> *"that pocket is too big for the system"*

35B Q4_0 ≈ 17.5 GB weights before KV cache. Alpha (Moto Razr) has 9-12 GB usable;
Beta (Jetson Orin Nano) has 8 GB. Does not fit either. Not adopted even as a
cloud-tier fallback for now.

**Lives at:** `data_vault/02_wiki_md/weights/rejected/pocket-35b-gguf/`

### 6. Gemma 4 12B — ON THE ROSTER
`gemma-4-12B-it-qat-UD-Q4_K_XL.gguf`, already on disk in `~/downloads`. Target is
Node Beta. Multimodal — a real `Gemma4AudioFeatureExtractor` config
(`processor_config.json`) is also on disk if the audio branch gets run.

**Lives at:** `data_vault/02_wiki_md/weights/candidates/gemma-4-12b-it-qat-ud-q4_k_xl/`

### 7. Spelling is `novaexopia` — with an `x`, no ligature in the URL form
Not `novaecopia`. Not `novaæxopia`. The `x` carries the hard `k` sound and keeps
it findable. Consistent with `novae-xorpus` / `aesop-xi`.

**Authority:** `NAMING-CANON.md`

### 8. Vendor folders get human-readable READMEs
Not just machine indexes. Each vendor README carries: what the vendor is in this
stack, active projects, credentials held, expiration dates, and open TODOs — so a
human (not "kid accessibility" — a normal human) can open the folder and know
where things stand.

### 9. Vendor workspaces are derive-from-function, NOT templated
> *"with the Qualcomm vendor Workspace you're going to need a whole different scale"*

Each vendor's folder shape comes from **what that vendor actually does in this
stack**, not from a one-size template. Qualcomm is the locked reference
implementation (silicon + SDK vendor):
`qairt-sdk/ · genie-bundles/ · hexagon/ · qat/ · models/`.
Google's shape is different because Google's role is different
(`platform/ · android/ · models/ · gemini/ · notebooklm/ · jetpack-compose/ ·
credits-and-accounts/ · runbooks/`).

### 10. Google gets prolific, first-class visibility
Not buried under `red_auditor` or any other cut. Own top-level vendor tree with
its own major subdivisions.

**Lives at:** `data_vault/02_wiki_md/vendors/google/`

### 11. Hybrid repo structure — LOCKED
Twelve top-level cuts across the federation (see `canon/REPO-MAP.md`).

---

## Terminology — one meaning per term, no exceptions

Every time a term is used differently, that's a bug.

| Term | Canonical meaning |
|---|---|
| **SDK** | Compile-time tools. Headers, libs, build toolchain. Does not execute your model. |
| **Runtime** | Executes code. `libQnnHtp.so`, llama.cpp, ONNX Runtime, CUDA. |
| **Engine** | Wrapper around runtime + model + scheduler. Serving surface. |
| **MCP server** | Protocol adapter. Exposes tools/resources over Model Context Protocol. Not an engine. |
| **Harness** | Outer control loop. Governs sessions, routes work, holds policy. ECC, Prime Agent, DeepSeek. |
| **Agent** | A specific persona running *under* a harness. Œræcle, file-administrator, red-auditor. |
| **Model** | Trained weights. A file. Does nothing by itself. |
| **Extraction** | Pulling structured content out of unstructured input. |
| **KV cache** | Runtime attention tensors. Ephemeral, per-session, in RAM. |
| **SQL** | Persistent structured records on disk. Not a cache. |
| **MAP.md** | Human/agent navigation index. Wikilinks. Read first. Bounded size. |
| **manifest.jsonl** | Machine RAG stream. Queried, never loaded whole. |
| **Recall memory** | Vector-retrievable prior context. Rebuildable. |

---

## Structural rulings

**MAP.md vs manifest.jsonl** — two artifacts, two audiences, two read triggers:

- `MAP.md` — humans + agents orienting. Markdown, `[[wikilinks]]`, bounded by tree
  *shape* not file count. Updated on **structural** change only. **Read first on
  session start.**
- `manifest.jsonl` — retrieval engines. One JSON object per line. Queried by RAG,
  **never loaded whole**. Updated on every leaf change.

Both exist at **every tier** (fractal).

**Agent first-move directive:** read `MAP.md` before anything else. Non-negotiable.
