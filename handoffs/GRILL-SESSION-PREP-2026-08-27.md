---
session: 2026-08-27
type: grill-session-prep
status: ready
---

# Grill Session Prep — 2026-08-27

Three patterns that need to be formalized before the next grill session. All three are reusable beyond novae-xorpus.

---

## 1. Corpus-Verify Skill

An independent document corpus verification tool. Given a source folder and a clean folder, it reads both using *different* extraction libraries than whatever cleaned the files, and checks whether content survived cleaning. Hard rule 5 in action: the tool that cleaned a file does not get a vote on whether the cleaning was good.

### Core algorithm

**squash(s)** — fold Unicode to ASCII, lowercase, strip all non-alphanumeric. Makes `CHIP SM8750` and `CHIPSM8750` identical for containment checks.

**wordstream(s)** — same fold but collapse separators to spaces. Preserves boundaries so you can tell whether a value survived as a separate word or got fused.

**find_atoms()** — extract named values from the source: URLs, paths, measurements, versions, identifiers, dates. Adjacency guard: if the checker's own reader produced a value fused to its neighbor, set it aside rather than asserting it missing.

**chunk_split()** — for a segment that fails containment, greedily cover it with the largest chunks that do survive. Names the culprit words.

**furniture_class()** — classify stripped lines against the strip policy in plain language, independent of the cleaner's implementation.

### Extractor independence

| format | cleaner uses | checker uses |
|---|---|---|
| pdf | pymupdf | pypdf |
| docx | pandoc | zipfile + xml.etree over word/document.xml |
| html | pandoc | html.parser, tag boundaries preserved |
| text | open() utf-8 | byte read + BOM probe |

### Output format

- One `.check.md` per source: verdict, fails with verbatim text and source line numbers, furniture audit, edge check
- `SUMMARY.md`: verdict table, findings count, list of every non-pass with links
- `FINDINGS.jsonl`: machine-readable, one JSON object per finding

### Verdict labels

`PASS` · `PASS WITH WARNINGS` · `FAIL` · `PASS + UPSTREAM DEFECT` · `PASS WITH WARNINGS + UPSTREAM DEFECT` · `NO-COUNTERPART` · `ERROR`

### Calibration rules — what to exclude

- Atoms the checker's own extractor produced fused to neighbors → unjudgeable, not a finding
- PDF table cells welded by the checker's reader → unjudgeable
- Icon-font glyphs that differ between readers → use chunk-based edge test, not exact-string

### Skill trigger

Any corpus ingestion pipeline where source files are converted to a clean/normalized format and you need independent verification that content survived.

### Formalization needed at grill session

Config layer (which formats to expect, what counts as furniture), installable skill definition, trigger string.

---

## 2. JSONL Manifest Pattern

A flat, one-object-per-item index file that makes any collection of documents, skills, tools, or repo modules queryable without loading every full file.

### Why it matters

Reading every document to find the relevant one is O(N). Reading a JSONL manifest and fetching only the one matching file is effectively O(1). For repos or databases with hundreds of files this is the difference between a session that loads everything vs a session that loads one thing.

### Field schema — general manifest

```json
{
  "id": "unique-slug",
  "path": "relative/path/to/file",
  "kind": "skill | tool | document | module | config",
  "purpose": "one sentence: what this thing does",
  "triggers": ["when to retrieve this", "keywords"],
  "covers": ["topic1", "topic2"],
  "cannot_answer": ["what it does not cover"],
  "depends_on": ["other-id"],
  "last_verified": "2026-08-27"
}
```

### Field schema — findings/audit JSONL

```json
{
  "source": "path/to/source/file",
  "clean": "path/to/cleaned/file",
  "kind": "pdf | docx | html | text",
  "severity": "FAIL | WARN | UPSTREAM",
  "class": "fused token | stray byte-order mark | respaced value | truncated source",
  "finding": "human-readable sentence naming the problem",
  "detail": "verbatim text or additional context"
}
```

### Where to put manifest files

- Root of a repo → `MANIFEST.jsonl` covering all modules/files
- Root of a folder → `MANIFEST.jsonl` covering that folder
- Per-document companion → `filename.manifest.jsonl` for large multi-section documents

### What to index

Skills, tools, documents, modules, configs — anything a future agent session might need to retrieve. Not: generated artifacts, build outputs, temporary files.

### Formalization needed at grill session

Implement `MANIFEST.jsonl` at novae-xorpus root and per-folder. Define the standard schema for the ECC repo and other corpus targets.

---

## 3. Agent Architecture — On-Device Pipeline

### The concierge model

The on-device agent is a go-between for the user and frontier models. It does not do the hard reasoning — it structures the conversation, routes to the right model, and handles the I/O layer.

```
Voice input
    ↓
STT (dedicated tool, not the LLM)
    ↓
0.8B: clean transcript → structured metaprompt
    ↓
User reviews / approves
    ↓
Route:  simple task  → 0.8B handles it directly
        complex task → 9B constructs final prompt → frontier model executes
    ↓
TTS reads output in real time (dedicated tool)
    ↓
VAD: user can interject
    ↓
Follow-up: action routing (web lookup, file upload, tool call)
```

### Model role assignment

| model | role | when to use |
|---|---|---|
| 0.8B Qwen (always-on) | routing, formatting, prompt cleanup, simple Q&A | always first; handles alone if task fits |
| 9B Qwen | complex reasoning, metaprompt construction, multi-step | when 0.8B detects complexity |
| Frontier (Claude / API) | hard synthesis, domain knowledge, code generation | routed from 9B |

### Routing rule

The 0.8B makes the routing call. Escalate to 9B when: prompt word count exceeds threshold, multi-step instructions detected, or domain-specific terms are present. 9B escalates to frontier when: synthesis across multiple sources required, code generation required, or output will be used as training data and needs maximum quality.

### Memory layers

| layer | scope | managed by |
|---|---|---|
| Context window | this session only, cleared on close | runtime |
| mem0 | persistent across sessions, selective | 0.8B reads at start / writes at end |
| GCP dataset | accumulates verified triples for training | automated export |

Open weights models do not retain anything between sessions by default. The weights are fixed files. mem0 is what provides persistence — it stores facts the agent should remember across sessions. Fine-tuning (the GCP training loop) is the only way to permanently change what a model knows.

### The RLVR training loop

1. Agents run tasks during normal sessions
2. Red agent / cross-auditor verifies each output (pass / fail) — this is the verifiable reward signal
3. Verified task→output→verdict triples accumulate in Cloud Storage
4. At threshold (e.g., 500 new verified triples), GCP runs a LoRA fine-tuning job on the 9B
5. Updated LoRA adapter is pushed back to home node
6. 9B is now better at the verified task types
7. Base model weights are never modified — only the LoRA adapter layer updates

### Why LoRA not full fine-tuning

LoRA adds a thin trainable layer on top of frozen base weights. If a training run degrades the model (bad data, too narrow), discard the adapter and start fresh without touching the base. Full fine-tuning modifies the base weights permanently — one bad run and the model is corrupted.

### Mixture of Agents

What this describes is **MoA** (Mixture of Agents) — multiple separate models, an orchestrator routes queries to the appropriate one. This is correct for the described architecture. MoE (Mixture of Experts) is a single model's internal architecture, unrelated.

### Agent roster

| agent | model | role |
|---|---|---|
| Concierge | 0.8B Qwen | prompt construction, routing, TTS/VAD coordination |
| Executive | 9B Qwen | complex reasoning, frontier handoff |
| Red Agent | 9B or frontier | cross-auditor, output verification, RLVR signal |
| NPU Manager | Nano / smol | shell/terminal assistant, low-level ops |
| Help Desk | Nano / smol | manual/doc lookup, Q&A |
| Web Agent | 9B or frontier | search, trending repos, news |
| Script Collector | GCP Agent Builder | RAG over scripts, tool discovery, audit |

### GCP Vertex AI Agent Builder

Fits as: cross-agent auditor, document Q&A engine, script writer/collector. The Agent Builder is essentially managed RAG + tool-calling — exactly the cross-auditor and script-collector role. $1,000 credits cover significant inference time. Training runs on H100s burn through fast — use LoRA on GCP too, not full fine-tuning.

---

## Next grill session action items

1. Formalize corpus-verify as an installable skill with trigger, config layer, schema
2. Implement `MANIFEST.jsonl` at novae-xorpus root and each source folder
3. Re-clean `Nova Corpus — Device Stack.html` with html.parser, re-run check.py on it
4. Decide on `SKILLS.md/technical-builder-style.skill.zip` — clean its text members or formally document the skip
5. Close the six retrieval gaps from the 2026-08-26 handoff: part1-lex, Coding-questions (2), TERMUX (2 + PDF), App_Builders_Guide_ (~3), AESOP_XI_ (~1)
6. Wire: Claude-in-Obsidian, Obsidian ↔ GitHub, graphify on main account, notebooklm-py
7. Route working inventory (ECC, Honey for Devs, Pocock Skills) through corpus process
8. Implement MANIFEST.jsonl schema across ECC repo and other database targets
