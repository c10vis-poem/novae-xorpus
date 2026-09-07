# NovÆxorpus — Federated Master Corpus Root

Canon name: **NovÆxorpus**. Repo name: `novae-xorpus`. See `NAMING-CANON.md`.

## What this is

The federated root of the NovÆ ecosystem. Every other repo (aesop-xi,
novus-aexenti, novaexopia, novus-aesc, novus-aeyre) is a sub-corpus under
this root. Also houses data_vault/ (the 5+1 Unified Cognitive Memory tiers),
vendor-corpora/, and skills-and-capabilities/.

Tool-agnostic rules live in **`AGENTS.md`** — read that for any non-Claude agent.

## CURRENT STATE — READ THIS FIRST

Documents 00–05 are now placed at repo root (as of this pass) — Document 05
(`05_FEDERATED_FILE_TREE_TOPOLOGY_MASTER.md`) is no longer just "visible in
Drive screenshots," it's committed here. Docs 01–04 are partial/truncated —
each says so in its own footer with the source Drive file id to re-fetch.
`_dumbass_universal_memory/` is fully built (7/7 subsystems). See `RESUME.md`
for exactly what's done, what's still unresolved, and what stale content
(the old `PROPOSED_FILE_TREE.txt`-based tree, including a `red-agent-auditor/`
directory that should not exist) has NOT yet been cleaned up.

**Do NOT merge any PR until the repo is reconciled against Document 05 —
that reconciliation has not happened yet, only the source docs were placed.**

## Session pipeline

1. **NEXT SESSION:** Build the bootstrap/hook layer (ECC hooks, honey-for-devs,
   launch scripts) so it exists as infrastructure before the capstone session.
2. **POTHOOK SESSION (capstone):** Finalizes all repo builds, database framework
   (#d.u.m.b.a.s.s.), final audit, bootstrap audits, and launch scripts. This
   session should NOT start from scratch — the hook layer must already be in place.

## Conventions

- `RESUME.md` — session handoff, current state, what's done, what's next
- `AGENTS.md` — tool-agnostic agent rules
- `NAMING-CANON.md` — authoritative NovÆ naming (supersedes all older variants)
- `manifest.jsonl` — machine-readable index (regenerate, don't hand-edit)
- Each sub-repo gets a section-kit: README.md, CLAUDE.md, manifest.jsonl,
  skill_manifest.json, agent.md (LLM wiki), STACK-MAP.md, RESUME.md,
  unresolved.md, sources/

## Key Drive IDs

- Parent folder `__NovÆxorpus(NÆX)`: `1O-1WTb7-ISY6YjyJzRvOafQ9bkSteQTC`
- README.md (Federated Architecture): `1PYJ6YGd-OfrpEDCt82-J3BkUQCwP5DhsDt8pH65OSLc`
- 00_DEFINITIVE_MASTER_SPECIFICATION: `1fbBIpDmQsMoOKfIfz3NKFwd6Il85SNuTIjdJ97LKoIM`

## Git workflow

PR required. No direct pushes to main. CI runs gitleaks + structure check.
