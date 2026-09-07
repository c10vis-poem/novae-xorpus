# Reasoning Bank — Recovery Protocol

Role: multi-model execution ledger & crash recovery, JSON/KV store (`02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md` §2).

"When an agent undertakes a 10-step programming task, it writes each step to `active_execution_paths.json`. If the battery dies or the process is killed at Step 6, the system reads this ledger upon reboot and resumes at Step 7 without losing state."

## Recovery steps

1. On boot / session resume, read `active_execution_paths.json` for the task's last committed step.
2. Verify the last step's recorded reward against `05_episodic_logs/rlvr_verifiers/` — if missing or `-1.0`, do not resume forward; re-enter step verification instead of assuming success.
3. Resume execution at `last_step + 1`, not from scratch.
4. Any resumed step that also fails gets logged via `failure_log_schema.json`, same task_id, incrementing a recurrence count rather than opening a fresh entry (mirrors the audit-recurrence convention used elsewhere in this corpus).
