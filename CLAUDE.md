# NovÆxorpus — the router

This file is the router. Tools, tool calling, skill loading, and the contexts
that go with them. **It is not the wiki.** No daily updates, no session notes,
no running knowledge — those live in `wiki/` and `handoffs/`.

## What this repo is

The pre-planning database. Source documents named in the 2026-08-18 session,
translated verbatim into structured Markdown for the `grill-with-docs` session.
Read `README.md` before doing anything.

## Naming

`NAMING-CANON.md` is authoritative. NovÆxorpus · NovÆxenti · NovÆxopia ·
Æsop-Xi · Horizons-Ui · Æsc · Æyre. Source documents keep their original
spellings — never rewrite a source to match the canon.

## Hard rules

1. Verbatim. Content survives, furniture goes.
2. Nothing merged. Same file count out as in.
3. Nothing interpreted.
4. Speaker attribution is content.
5. Nothing self-certifies.
6. Push every session. `main` stays current.
7. Never stall on a tool. If it fails, do the job another way.

## Layout

| | |
|---|---|
| `01-sources/` | untouched originals + sha256 manifest |
| `02-clean/` | verbatim cleanups |
| `03-check/` | what the checking tool reported |
| `wiki/` | running knowledge — built later, from `02-clean/` |
| `handoffs/` | session state, rewritten and pushed every session |
| `tools/` | scripts this repo uses |
| `skills/` | skills scoped to this repo |

## Tools and skills

Nothing here yet. Populated when the grill session defines what's needed —
not before, and not by copying in a library. A skill without a stated trigger
does not get installed.
