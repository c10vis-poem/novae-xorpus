-- migrations_v1.sql — #d.u.m.b.a.s.s. PostgreSQL 16+ baseline
-- pgvector + pgcrypto required. Starting schema derived from
-- 02_DUMBASS_UNIVERSAL_MEMORY_SPEC.md §2/§3 — extend as OB1/reasoning-bank
-- record shapes get finalized from the full source doc.

CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Global RAG registry mirror (root manifest.jsonl / 02_DUMBASS §3 schema)
CREATE TABLE IF NOT EXISTS memory_records (
    record_id       TEXT PRIMARY KEY,
    document_path   TEXT NOT NULL,
    tier            SMALLINT NOT NULL,
    category        TEXT NOT NULL,
    content_hash    TEXT NOT NULL,
    file_size_bytes INTEGER,
    last_modified   TIMESTAMPTZ NOT NULL,
    retrieval_tokens TEXT[] NOT NULL DEFAULT '{}',
    embedding       VECTOR(1536)
);

-- Reasoning Bank trajectory mirror (05_episodic_logs/trajectories/)
CREATE TABLE IF NOT EXISTS trajectories (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    task_id     TEXT NOT NULL,
    step        INTEGER NOT NULL,
    tool_call   TEXT,
    exit_code   INTEGER,
    reward      REAL,
    ts          TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Red Auditor verdicts (00_DEFINITIVE_MASTER_SPECIFICATION_V3_COMPLETE.md §7)
CREATE TABLE IF NOT EXISTS red_auditor_verdicts (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    task_id     TEXT NOT NULL,
    verdict     TEXT NOT NULL CHECK (verdict IN ('pass', 'fail', 'n/a')),
    reason      TEXT,
    ts          TIMESTAMPTZ NOT NULL DEFAULT now()
);
