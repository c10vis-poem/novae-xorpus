# MAP — entities

_Human/agent navigation index. **Read this first.** Bounded: grows with tree shape, not file count._

**Path:** `entities`  
**Updated:** 2026-09-06  
**Machine index:** `manifest.jsonl` (same folder) — query it, never load it whole.

BY-STRUCTURAL-ENTITY — registries, schemas, hardware profiles.

## Contents

- [[nodes]] — Alpha (Moto Razr) / Beta (Jetson) / Gamma (Rubik Pi) / Delta (GCP).
- [[schemas]] — JSONL, SKILL.md, YAML profile, JSON-RPC audit schemas.
- [[canon]] — NAMING-CANON, brand ligature, motto.
- [[permissions]] — OS permissions, ADB rights, tool guards, security clearance.

## Read order

1. This `MAP.md` — orientation
2. `manifest.jsonl` — targeted retrieval
3. Leaf notes — only what the query needs

## Rules

- Update this MAP on **structural** change only (new subfolder/project/agent/vendor). Not on every leaf edit.
- Every folder here carries its own `MAP.md` + `manifest.jsonl` (fractal, per Part 1.4).
- Content is verbatim-derived. Nothing interpreted, nothing merged, nothing self-certified.
