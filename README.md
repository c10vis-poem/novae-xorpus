# Foundation Sources

**The pre-planning database.**

A new repo. Nothing inherited, nothing forked, nothing migrated.

It holds the source documents this project is actually built on, translated
verbatim into structured Markdown. That's all it does. It doesn't plan, decide,
combine, or interpret anything.

## What it's for

The grilling session. `grill-with-docs` reads what's in here, the operator
answers, and out of that comes the plan — the foundation outline and the whole
repo structure that follows. The real data compilation starts after that, not
before.

```
[1] this repo        the named sources, cleaned up verbatim
                     ↓
[2] grill session    this data + the operator's answers
                     → the plan, the foundation outline, the structure
                     ↓
[3] graph the vault
                     ↓
[4] compilation      the actual combining and condensing
```

Everything downstream is shaped by what lands here, so what lands here has to be
complete and unaltered. `grill-with-docs` is marked
`disable-model-invocation: true` — only the operator can start it.

## Hard rules

1. **Verbatim.** Every word of content survives. Furniture gets stripped; content
   never does.
2. **Nothing merged.** Same file count out as in. One `.md` per source.
3. **Nothing interpreted.** No summaries, no opinions about what a document
   means, no reconciling contradictions between sources.
4. **Speaker attribution is content.** In chat exports, who said what survives.
5. **Nothing self-certifies.** The tool that cleaned a file does not get a vote
   on whether the cleaning was good.
6. **Push every session.** `main` stays current. A handoff that only exists
   locally does not exist.
7. **Never stall on a tool.** If it fails, do the job another way.

## One home

Everything lives in the Obsidian vault, and the vault is the repo. Same tree —
edited in Obsidian, tracked by git, pushed to main.

**This repo is the vault.** Operator-stated 2026-08-26: NovÆcorpus is a
**replacement, not a sibling**. It is the universal memory layer and Data Bank,
and the home of the living `wiki.md` (the llm-wiki).

Three legacy Obsidian vaults still exist alongside it on the device:

```
/storage/emulated/0/OBSIDIAN_VAULT/        ← a container, not a vault
├── .OBSIDIAN/           has .obsidian/  → legacy vault
├── OBSIDIAN-WIKI.md/    has .obsidian/  → legacy vault
├── OBSIDIAN_VAULT.md/   has .obsidian/  → legacy vault
└── novae-corpus/        has .git/       → THIS REPO — the vault
```

None of the three has ever synced, which is why three handoffs written in August
never reached GitHub. They are resolved by steps 1–2 of the grill mandate below:
evaluate for useful files *and file-tree structure*, then purge. Obsidian hooks
and git hooks on this repo are still to be wired.

## What the files are for

| | |
|---|---|
| **`CLAUDE.md`** | The router. Tools, tool calling, skill loading, and the contexts that go with them. **Not the wiki.** No daily updates. |
| **Handoff** | The constantly changing session data. Rewritten and pushed **every session**. |
| **Wiki** | Running knowledge. Built later, from the cleaned sources. |
| **`01-sources/`** | Untouched originals. Never edited. |

## The one job

Take an original, strip the furniture, keep every word, write structured
Markdown.

**Strip** — page headers, footers, page numbers, browser and app chrome
(`Ask anything`, `Use code with caution`, `AI Mode`, nav bars, source panels),
watermarks, logo blocks, export metadata, per-page boilerplate.

**Keep** — every sentence of content, code as fenced code, tables as tables,
lists and headings and emphasis, diagram labels, captions, footnotes, and any
date the document states about itself.

Unsure whether something is content or furniture? Keep it.

### Chat exports: keep the turns separate

Most of these are chat exports. The operator's typed turns are the primary
content, by a wide margin. Model turns are secondary and routinely mix useful
iteration with conflation and error.

The cleanup doesn't judge which is which. It keeps both and makes the boundary
unmistakable: every turn marked with who said it, order preserved exactly, never
merged, never interleaved. A bare `.` or `stop` is a turn and stays.

## Output

One `.md` per source, mirroring the source tree.

Long documents also get an inline `.jsonl`, one record per section, so a tool
can query without loading the whole file. Short ones don't need it.

```yaml
---
source: 01-sources/pdf/novaegenti-defined-pt1.pdf
origin: drive://<file_id>
doc_date: 2026-08-13          # the document's own date, from inside it
file_modified: 2026-08-14
cleaned: 2026-08-24
---
```

The dates are there because the grill session decides stale versus garbage
versus keeper and can't without them. Later is a reasonable tiebreak between two
documents on the same subject — a prior, not a ranking. Contradictions between
sources are left exactly as they are.

## The check — RLVR

The operator orchestrates it. A different tool reads the original and the
cleaned version and reports which details are missing. Not the tool that did the
cleaning.

That's the reward signal, and it's why it works as RLVR: "is this detail present
in both" is mechanically verifiable, so the score is real rather than an
opinion. A missing detail is a fail with a name attached, not a percentage.

The corollary is the rule that governs everything downstream: **anything whose
output isn't mechanically checkable can't be an artifact — only a review
candidate.**

## Sources

Dictated 2026-08-18, 11:56–12:50. Verbatim record in
`ORIGINAL-DIRECTIONS-2026-08-18.md`, which is copied in here as a source itself.

Nearly all of it lives in one Drive tree, `___Lex-Novi-Æxentis-Copiæ`.

| # | Time | Named | Files | Where |
|---|---|---|---|---|
| 1 | 11:56 | `NovÆgenti Defined (pt.1).pdf` | 1 | on device (Claude artifact, not in Drive) |
| 2 | 11:56 | `Three-APK Architecture` v1 + v2 | 2 | Drive `ReadMe*` · v2 on device |
| 3 | 12:00 | `Continualharness.md` | 1 of 5 | Drive — **five candidates, pick one** |
| 4 | 12:04 | `Not wrongtxt` | 1 | Drive · on device |
| 5 | 12:08 | `NovÆcopia Vincet` (Doc + docx) | 2 | Drive `(NÆc)Æxi` · docx on device |
| 6 | 12:08 | `NovA-Corpus Diagnostic` | 1 | Drive `(NÆc)Æxi` |
| 7 | 12:10 | "all four of these PDFs" | ? | **ambiguous — confirm which four** |
| 8 | 12:12 | `CCConvo` folder | **29** | Drive `(NÆc)Æxi` — never pulled |
| 9 | 12:15 | `Nova Corpus — Device Stack` | 1 | Drive |
| 10 | 12:17 | `## Part 1- Lex (1).txt` | 1 (+2 dups) | Drive root · Docs in `ReadMe*` |
| 11 | 12:19 | the Drive link = folder **`Llm wiki`** | **12** | Drive `ReadMe*` — never pulled |
| 12 | 12:21 | `TERMUX_❔'s` folder | 4 | Drive — never pulled |
| 13 | 12:22 | `Coding ❔'s` — two docs | 2 | Drive — never pulled |
| 14 | 12:24 | `•⛔-whyyoucodevoicelikeass-` | ? | **not found by that name** |
| 15 | 12:26 | `Recursive Training Through Verification` | 1 of 2 | Drive — **two copies, pick one** |
| 16 | 12:27 | `Universal_Memory_` + `AESOP_XI_` non-dups | 11 + 8 | Drive — plus 11 subfolders to recurse |
| 17 | 12:31 | `Building inside of Google` + `App_Builders_Guide_` | 4 | Drive — vault copy is **0 bytes**, re-pull |
| 18 | 12:50 | `--🗂️~SKILLS.md_🛠️_` | 3 | Drive — plus 5 subfolders |

**~95 files located and reachable.** 6 already on device. 1 corrupt at 0 bytes.
1 folder unfindable by the name given. 3 items with two candidates each.

Exact names, byte sizes, and Drive file IDs for every one:
[`SOURCE-RETRIEVAL-MAP.md`](SOURCE-RETRIEVAL-MAP.md).

**Also a source:** the 2026-08-24 session that produced this README. It settled
the compilation-versus-compression distinction, what the daemons and Horizons
actually are, the CLAUDE.md / handoff split, and the RLVR check. At least as
current as the 08-18 material.

The old `manifests/sources.jsonl` is not this list — a 124-entry Drive crawl
where only 34 entries trace to anything asked for. Ignore it.

## What the grill session has to produce

Operator-stated, 2026-08-26. This is the mandate for the `grill-with-docs`
session. The agent running that session takes the data in this repo and produces
all of the following.

**NovÆcorpus is a replacement, not a sibling.** This repo *is* the vault — the
universal memory layer and Data Bank, and the home of the living `wiki.md`
(the llm-wiki). The other Obsidian vaults on the device are legacy and are
resolved by steps 1–2 below.

### 1. Evaluate the remaining Drive files

Grep every remaining file in Drive and determine what data is actually useful in
the universal memory layer and database.

### 2. Purge the legacy vaults and repos

Evaluate the still-remaining vaults and repos for any useful files *or file-tree
structure* worth keeping, then purge the rest.

### 3. Run the chosen files through the corpus process

Everything selected in 1–2 undergoes the same process as the existing corpus
documents. The result is the initial structure of the memory layer / Data Bank —
a starting point that continues to grow, expand, condense, and fork over time.

### 4. Determine the repo count

Decide how many repositories are needed in the immediate future, and extrude
whatever information the "grand repository" holds that can be used inside them.

### 5. Define the file format and file tree for each repo

Produce an outline for each repo's README and setup docs, so the agent building
that project starts with the building blocks it needs.

**Projects lined up, and repos that may need building:**

- **NovÆcorpus** — this repo.
- **Horizons-Ui**, plus the two adjacent access daemons (**Æsc**, **Æyre**).
  All three APKs run independently of each other, so three separate repos is
  probably the more efficient structure.
- **Four permanent agents**, fixtures in the architecture:
  1. **Search / recommendations / web-scraping** — tools, skills, and repo
     applicator. Runs a routine that scrapes for the latest updates,
     breakthroughs, currently trending repos, and industry news applicable to
     any project in the corpus. Cross-references and reviews what it finds so it
     can advise on alternative implementations or methods any project could use.
  2. **Help desk / operator's manual and install guide** — every app built gets
     running instructions, like any user manual. Upload a manual into this agent
     and it grabs data live, answers questions by voice, and acts as a live help
     desk. Works with any operator manual, system, or repo: whatever files are
     uploaded become its enterprise data bank for questions, how-tos, and
     troubleshooting on any installed project.
  3. **Housekeeping / script keeper / data extractor** — chat logs, tool-calling
     history, all of it. Goes through at end of day, collects the history, and
     writes it into structured Markdown and JSONL. Audits against the corpus and
     uses open web search tools for RLVR audits. Being local and the main hub, it
     also assists across the full three-device work setup: pulling tools,
     grepping data, and acting as active-workflow cross-agent auditor.
  4. **Red agent auditor** — previously defined.

  The last two agents will use one or two apps custom-built on the Google Cloud
  agent platform, using the enterprise app-building credits.

### 6. NovÆxenti

The actual agent logic, models, tools, and skills making up the dual-agent
query/executor model that acts as the main on-device assistant, using
Horizons-Ui and the accessibility daemons.

### 7. NovÆcopia

The claw aspect of the agent: tools, webhooks, on-device accessibility engines,
the runtime, PC/MCP servers, and IDE access. **Open question:** whether this can
be compiled together with NovÆxenti or has to stand alone.

### 8. Æsop-Xi

The orchestration layer — memory extraction protocols, agent parameters, and the
ethical agent logic compilation. The rules, guidelines, and infrastructure that
guide agents, manage how they operate, and monitor use of the Data Bank. Works
in conjunction with openwiki for file management, and implements the KAG and
RLVR audits and script training for assigned agents.

### Wiring this repo still needs

Not blockers on the grill session, but required for the ecosystem to work:

- Obsidian hooks **and** git hooks on this vault/repo.
- **Claude-in-Obsidian** connection — operator needs to be walked through it.
- **Obsidian ↔ GitHub** connection, the UI, and the desktop applications.
- **graphify** wired to the operator's main account.
- **notebooklm-py** skill, so the Gemini notebooks attach and update into this
  repo along with everything else.

## Layout

```
01-sources/   originals, untouched
02-clean/     the .md (and .jsonl for long ones)
03-check/     what the checking tool reported, one file per source
handoffs/     session state, pushed every session
CLAUDE.md     the router
```

## Extraction note

`pymupdf` `get_text("dict")` works on this device. `pymupdf4llm` drops content —
13% of one sample, half of another — because it discards text overlapping
images. Anything torch-based needs a wheel Android doesn't have.

Two of the PDFs are Chrome print-to-PDF: heading levels, table cells and list
semantics were destroyed before the file was written. There's no structure in
them to recover, so don't invent one.

**And none of that is a reason to stop.** If a converter fails, use another one,
or write the twenty lines that do the job. If a sub-agent chokes on a tool, do
it directly. A blocked tool has already cost this project more than a day of
waiting — it is never a reason to stall.

## Status

Nothing cleaned yet.
