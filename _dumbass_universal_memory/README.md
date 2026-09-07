# #d.u.m.b.a.s.s. — Database & Universal Memory Bank Across Split Services

## System Overview & Motto

"It isn't 'dumbass-proof' if it hasn't been '#d.u.m.b.a.s.s.' proven."

#d.u.m.b.a.s.s. is the unified database and memory backbone powering the distributed cognitive agent architecture across Node Alpha (Motorola RAZR Ultra 2025 on Snapdragon 8 Elite), Node Beta (NVIDIA Jetson Orin Nano Super), and edge sensory daemons (Æsc & Æyre alongside Horizons UI).

It provides split-service state management, decoupling fast on-device episodic caches from heavy centralized vector indexing and immutable audit ledgers.

## Component Matrix

| Subsystem | Primary Host / Role | Core Technologies | Primary Artifacts |
|---|---|---|---|
| sqlite/ | Node Alpha (Termux / Æsc) | SQLite 3 WAL, C++ / Python bindings | schema.sql, README_SQLITE.md |
| postgres/ | Node Beta (Jetson Orin Nano) | PostgreSQL 16+, pgvector, pgcrypto | migrations_v1.sql, README_POSTGRES.md |
| mem0/ | Edge & Node Beta (P2P Sync) | Mem0 episodic tracking engine | rolling_habits_schema.json, mem0_session_config.yaml |
| ob1_protocol/ | Federated MCP Layer | Open Brain (OB1) MCP Server protocol | ob1_mcp_spec.md |
| omniroute/ | Data Routing & Memory Extraction Layer (Port 20128) | Proxy router, RTK token compression, async memory tap to Reasoning Bank & mem0 | omniroute_config.yaml |
| reasoning_bank/ | System Flywheel & Recovery | State checkpointing & RLVR grading | active_execution_paths.json, recovery_protocol.md |
| continual_harness/ | Adaptive Runtime Layer | Reset-free online adaptation | continual_harness_policy.md |

### OmniRoute: The Data Routing & Memory Extraction Layer

OmniRoute (listening on http://localhost:20128/v1) functions as a dual-role gateway in the #d.u.m.b.a.s.s. architecture:

- Data & Inference Routing: Dynamically directs prompts across the hardware mesh (local Hexagon NPU -> Jetson Orin Nano -> cloud frontier models) while applying RTK token compression (15%-95% savings).
- Asynchronous Memory Extraction: Every prompt and completion passing through the gateway is asynchronously tapped. Tool invocations, successful reasoning steps, and failure trajectories are captured and dispatched into the Reasoning Bank and mem0 without imposing latency on the inference loop.

> Note: the operator's original directive states plainly "Omni route is a memory extraction layer." A separate spec draft frames OmniRoute as "an Inference / Token Gateway ... not a memory extraction layer." This file keeps both roles (gateway + memory tap) per the dual-role description above; the contradiction between drafts is flagged, unresolved — see `reviews_and_audits` findings, not resolved by this placement pass.

## Core Memory Laws

1. Law of Sensory Immutability: Raw documentation, historical logs, and base prompts are immutable. Changes occur only through additive versions or layered refinement deltas.
2. Law of Zero-Loss Resumption: Every multi-step agent trajectory is checkpointed to active_task_state and active_execution_paths.json. An interrupted session resumes from its latest verified step without repeating side-effects.
3. Law of Local Locality with Global Discovery: Subsystems operate against their own high-speed local caches and manifests, reaching into the centralized PostgreSQL store only when cross-cutting retrieval or deep embedding search is required.
4. Law of the Sealed Red Auditor: Auditing and validation remain strictly decoupled. Trajectories flagged with errors or hallucinated paths are quarantined with full error traces, preserving system integrity.
