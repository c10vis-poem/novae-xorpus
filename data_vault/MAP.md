# MAP — data_vault (5+1 tier root)

_Read first. This is the tier map for the whole vault._

**Updated: 2026-09-06**

## The 5+1 tiers

| Tier | Path | What it is |
|---|---|---|
| 1 | `01_raw_sources/` | Untouched originals + sha256 manifest. Never edited. |
| 2 | `02_wiki_md/` | **The master wiki.** Verbatim-derived structured notes. The corpus. |
| 3 | `03_recall_cache/` | Vector/embedding cache. Rebuildable from Tier 2, never authoritative. |
| 4 | `04_skills_runtime/` | Executable surface — `extracted_tools/` + `prompt_skills/`. |
| 5 | `05_episodic_logs/` | Append-only session/trajectory logs. Speaker attribution preserved. |
| +1 | `06_working_ephemeral/` | Transient state. Deliberately NOT persisted. |

## Entry point

Start at [[02_wiki_md/MAP.md]] — that's where the corpus lives.

## Non-negotiable

Tier 1 is never rewritten. Tier 3 is never trusted over Tier 2. Tier 5 is append-only.
