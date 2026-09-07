# RESUME.md — NovÆxorpus Session Handoff

**Last updated:** 2026-09-07 (this pass)
**Branch:** `restructure/drive-file-tree`
**Status:** Root docs 00–05 placed and pushed. `_dumbass_universal_memory/` fully built (7/7 subsystems). Repo still contains a large amount of stale content from the wrong `PROPOSED_FILE_TREE.txt`-based structure — NOT yet cleaned up.

---

## What's actually done, this pass

- `00_DEFINITIVE_MASTER_SPECIFICATION_V3_COMPLETE.md` — placed in full (source fully read, 900 lines).
- `05_FEDERATED_FILE_TREE_TOPOLOGY_MASTER.md` — placed, assembled from Drive screenshots + a content snippet; likely complete through §3, unconfirmed beyond that.
- `01_SOVEREIGN_NODE_AND_APK_TOPOLOGY.md`, `02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md`, `03_DUAL_OPERATIONAL_HARNESS_AND_MCP_SPEC.md`, `04_ON_DEVICE_INGESTION_AND_W5H_FRAMEWORK.md` — placed from search-result snippets, each **truncated mid-document** at the point noted in its own footer. Re-fetch each via Drive `read_file_content` (ids in each file's footer) to complete them.
- `_dumbass_universal_memory/` — all 7 subsystems now have real files (sqlite/, postgres/, mem0/, ob1_protocol/, omniroute/, reasoning_bank/, continual_harness/), matching what the manifest.jsonl already promised. Content synthesized from `02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` where the full subsystem-specific source wasn't separately available — several files say so explicitly in their own body; verify against source before treating as final.

## Known unresolved conflicts (flagged, not decided by this pass)

1. **Skills/tools location.** Document 05 itself gives two different single-location answers (`data_vault/04_skills_runtime/prompt_skills/` via the `.Claude` row, and `skills-and-capabilities/` via the `--🗂️~SKILLS.md_🛠️_` row). The user's actual ruling (see `project_novae_xorpus_repo_layout_correction.md`) is neither — no single location, each skill/tool lives in the repo that uses it. Both `04_DEFINITIVE...` doc text and this doc's own tree note this; not yet applied to any real skill/tool placement.
2. **OmniRoute's role.** `_dumbass_universal_memory/omniroute/omniroute_config.yaml` and the `02_DUMBASS...` placement both flag this: the operator's original directive calls OmniRoute a memory-extraction layer; a separate spec draft calls it an inference/token gateway that is explicitly *not* a memory-extraction layer. Kept both roles per the dual-role framing already in `_dumbass_universal_memory/README.md`. Needs the user's call.
3. **`.incognito_red_sandbox/` visibility.** `reviews_and_audits/REVIEW-CANON-AND-BUILDERS-GUIDE.md` argues the dot-folder placement is a half-measure (still visible in `ls -a`/git/manifests) and recommends moving it out of `vault_root/` entirely, exposing only a `red_verdict: pass|fail|n/a` field. Not acted on.

## Known confirmed-stale content, not removed by this pass

The repo root still contains a large tree built from the wrong source (`PROPOSED_FILE_TREE.txt`) predating Document 05: `aesop/`, `clis-and-agents/`, `file-management-system/`, `github-ci-cd/`, `global-documentation-vault/`, `horizons-ui/`, `nodes/`, `nova-claw/`, `novus-agenti/`, `recursive-training/`, `registries/`, `skills/`, `sources/`, `tools/`, `01-sources/`, `02-clean/`, `03-check/`, `wiki/`, `projects/`, `handoffs/`. Most notably: **`red-agent-auditor/`** exists as a top-level directory whose own `README.md` cites `PROPOSED_FILE_TREE.txt` as its source — this is the exact standalone entity the user confirmed does not exist (see `project_red_auditor_not_detached.md`). None of this old tree was deleted or migrated this pass — that's a bigger, separate restructure decision, not a placement task.

## What's still unread from the shared Drive folder

`reviews_and_audits/` (5 of 11 docs read), `vendor-corpora/` (README title only, subfolders unopened), `skills-and-capabilities/` (root read, subfolders unopened), `tools/` (fully read, `red_auditor/` subfolder unopened), and `aesop-xi/`/`novaexopia/` content was never located as subfolders of this specific Drive folder — may exist elsewhere in Drive.

---

*Older content below this line predates Document 05 discovery and this placement pass — kept for continuity, may reference the wrong source.*

**Branch:** `restructure/drive-file-tree` (ALL repos)
**Status:** PRs open, NOT merged, need revision before merge

## CRITICAL: What Happened and What's Wrong

Six repos got PRs on `restructure/drive-file-tree` branches based on the **WRONG** source document (`PROPOSED_FILE_TREE.txt`). The CORRECT and FINAL authority is **Document 05: `05_FEDERATED_FILE_TREE_TOPOLOGY_MASTER`**, which defines the Federated Multi-Corpora Architecture. All 6 PRs must be revised to match Document 05 before merging — Document 05 is now placed in this repo at root, no longer just "visible in screenshots."
