# MAP — 02_wiki_md (master wiki root)

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `02_wiki_md`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.



## Contents

- [[vendors]] — BY-VENDOR — first-class. Each vendor gets a full sub-tree.
- [[weights]] — BY-MODEL — every weight file catalogued. manifest: repo id, quantization, size, on-disk-path, target-hardware.
- [[runtimes]] — BY-RUNTIME — low-level executors. A runtime EXECUTES code.
- [[engines]] — BY-ENGINE — wrappers around runtime + model + scheduler.
- [[harnesses]] — BY-HARNESS — outer control loops. See modular hot-swap spec (4 interfaces).
- [[agents]] — BY-AGENT — personas under harnesses. manifest: harness, model, memory-scope, tool-allowance, on-node.
- [[protocols]] — BY-PROTOCOL — specs, not code.
- [[scripts]] — BY-EXECUTABLE — docs for actual scripts (mirrors 04_skills_runtime/extracted_tools/).
- [[tools]] — BY-CAPABILITY — one .md per tool available to any agent. Mirrors extracted_tools/.
- [[skills]] — BY-SKILL — one .md per SKILL.md. Mirrors prompt_skills/.
- [[projects]] — BY-PROJECT — per-repo subvaults.
- [[entities]] — BY-STRUCTURAL-ENTITY — registries, schemas, hardware profiles.
- [[architectures]] — BY-BLUEPRINT — diagrams, data flows, integration maps.
- [[memory-subsystem]] — BY-MEMORY-COMPONENT — first-class top-level cut.
- [[runbooks]] — BY-OPERATIONAL-PROCEDURE — step-by-step.
- [[references]] — BY-EXTERNAL-SOURCE — vendor docs + papers as Tier-2 notes.
- [[operator-log]] — BY-SPEAKER-ATTRIBUTION (hard rule 4). Operator words are content, never paraphrased.
- [[indexes]] — BY-CROSS-CUTTING-VIEW — MOCs re-slicing everything.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
