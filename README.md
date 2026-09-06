# NovÆxorpus

The vault. The universal Data Bank — #dumbass (Database & Universal Memory Bank
Across Split Services). The memory layer meant to persist across every repo and
every agent, scoped to no single project.

**Branch note:** `master` carries the built structure (this). `main` holds the
pre-build state.

---

## Start here

| If you want to… | Read |
|---|---|
| Navigate the corpus | `data_vault/MAP.md` → `data_vault/02_wiki_md/MAP.md` |
| Know what was decided and why | `canon/DECISIONS-LOCKED.md` |
| Know which repo holds what | `canon/REPO-MAP.md` |
| Know the naming rules | `NAMING-CANON.md` |
| Know the operating rules | `AGENTS.md` |
| Pick up where the last session stopped | `RESUME.md` |
| See what's still open | `unresolved.md` |
| Read the full architecture review | `canon/PROPOSAL-V2-CORRECTED-WIKI-TERMINOLOGY-AND-ALTERNATIVE.md` |

**Agents: read `MAP.md` before anything else.** That directive is non-negotiable
and applies at every tier.

---

## The 5+1 tier vault

```
data_vault/
├── 01_raw_sources/         untouched originals + sha256 manifest — never edited
├── 02_wiki_md/             THE CORPUS — verbatim-derived structured notes
├── 03_recall_cache/        vector/embedding cache — rebuildable, never authoritative
├── 04_skills_runtime/      executable surface: extracted_tools/ + prompt_skills/
├── 05_episodic_logs/       append-only session/trajectory logs, attribution preserved
└── 06_working_ephemeral/   transient state — deliberately NOT persisted
```

Tier 1 is never rewritten. Tier 3 is never trusted over Tier 2. Tier 5 is
append-only.

## The master wiki interior

`02_wiki_md/` carries 18 first-class cuts. Every one has its own `MAP.md` and
`manifest.jsonl` (fractal):

```
vendors/           BY-VENDOR — google, qualcomm, nvidia, github, anthropic, …
weights/           BY-MODEL — active / candidates / rejected / voice / vision
runtimes/          BY-RUNTIME — what executes code
engines/           BY-ENGINE — runtime + model + scheduler wrappers
harnesses/         BY-HARNESS — outer control loops (ECC, Prime Agent, DeepSeek)
agents/            BY-AGENT — personas under harnesses
protocols/         BY-PROTOCOL — specs, not code
scripts/           BY-EXECUTABLE — docs for real scripts
tools/             BY-CAPABILITY — one note per tool
skills/            BY-SKILL — one note per SKILL.md
projects/          BY-PROJECT — per-repo subvaults
entities/          BY-STRUCTURAL-ENTITY — nodes, schemas, canon, permissions
architectures/     BY-BLUEPRINT — diagrams, data flows, integration maps
memory-subsystem/  BY-MEMORY-COMPONENT — omniroute, reasoning-bank, ob1, mem0, …
runbooks/          BY-OPERATIONAL-PROCEDURE — step-by-step
references/        BY-EXTERNAL-SOURCE — vendor docs + papers
operator-log/      BY-SPEAKER-ATTRIBUTION — verbatim operator record
indexes/           BY-CROSS-CUTTING-VIEW — MOCs re-slicing everything
```

## MAP.md vs manifest.jsonl

Two artifacts. Two audiences. Two read triggers. Do not confuse them.

| | `MAP.md` | `manifest.jsonl` |
|---|---|---|
| **Audience** | humans + agents orienting | retrieval engines |
| **Format** | Markdown, `[[wikilinks]]` | one JSON object per line |
| **Size** | bounded by tree *shape* | grows with file count |
| **Update on** | structural change only | every leaf change |
| **Read** | first, on session start | queried — **never loaded whole** |

## Hard rules

1. Verbatim. Content survives, furniture goes.
2. Nothing merged (applies to `01-sources` → `02-clean`; synthesis output is a
   separate layer).
3. Nothing interpreted.
4. **Speaker attribution is content.**
5. Nothing self-certifies. The tool that cleaned a file does not get a vote on
   whether the cleaning was good.
6. Push every session.
7. Never stall on a tool. If it fails, do the job another way.

## Legacy layout (pre-vault, still present)

`01-sources/` · `02-clean/` · `03-check/` — the original RLVR extraction corpus,
93 cleaned files. Feeds `data_vault/01_raw_sources/`. `tools/clean.py` regenerates
`02-clean/` from `01-sources/` in one idempotent pass.
