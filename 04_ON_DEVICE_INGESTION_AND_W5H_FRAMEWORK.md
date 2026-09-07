# 04_ON_DEVICE_INGESTION_AND_W5H_FRAMEWORK.md

## On-Device Markdown Ingestion, JSONL Marker Extraction & The W5+H Operational Framework

### 1. Document Scope & Purpose

Establishes the on-device ingestion pipeline and codifies the W5+H System Orientation across all agents, tools, and repositories. Unifies and standardizes: GLM-PT.1-MASTER.DOCUMENT.md & GLM-PT.2-fusion-response.md; JSONL labeling & Personal Wiki automatic file compiler; W5/H-(6-files) (User explains audit.txt, What and Why.txt, What and How.txt, Where and When.txt).

---

### 2. The W5+H Operational Matrix

| Vector | Core Architectural Query | System Implementation Definition |
|---|---|---|
| WHO | Which agent or daemon? | Horizons UI (concierge), Æsc (terminal/ADB daemon), Æyre (media daemon), Qwen 3.5 0.8B (executor), Qwen 3.5 9B (query), Official Enterprise Auditor, or Incognito Red Auditor. |
| WHAT | What component or tool? | Pure Markdown notes, atomic JSONL markers, GGUF weights, SQLite tables, PostgreSQL OB1 records, ECC skills, or Prime Agent RLM functions. |
| WHEN | What triggers the action? | User mic tap, screen change via Media SDK, periodic cron sweep, end-of-day P2P sync, or RLVR verifier failure (-1.0). |
| WHERE | Where does it run & live? | Node Alpha (Moto RAZR Ultra 2025), Node Beta (Jetson), Node Gamma (Rubik Pi 3), or Directory Tier (01 through 05). |
| WHY | Why this specific design? | Prevent Android LMK eviction, maintain zero-trust bounds, zero-copy memory throughput, prevent context bloat, enforce sensory immutability. |
| HOW | What runtime & protocol? | GenieX hybrid GGML Hexagon HTP offload, ADB loopback on `localhost:5555`, UNIX domain sockets, OpenWiki TUI, Python/Bash extraction scripts. |

---

### 3. The On-Device Ingestion Pipeline: Markdown-First & JSONL Markers

**The problem it solves:** raw files dumped into a workspace come in mixed formats (DOCX, HTML, TXT, PDF). Reading raw binaries/HTML wastes tokens on formatting tags and timestamps and chokes context windows. Generating PDFs on a phone burns CPU and storage. System standard: strictly clean Markdown (`.md`) and machine-readable JSONL (`.jsonl`).

```
[ Raw Files Dropped in ~/raw-bucket/ ]
                │
                ▼
[ convert_raw_to_markdown.py ] (Termux / Æsc)
  - Strips web UI fluff, HTML tags, and styling code
  - Extracts text from DOCX, TXT, and Markdown
  - Prepends strict YAML frontmatter metadata
                │
                ▼
[ Output: 01_raw_sources/ ]
                │
                ▼
[ generate_jsonl_markers.py ]
  - Generates atomic SHA256 content hashes
  - Extracts top 15 retrieval keyword tokens
  - Writes record to manifest.jsonl
                │
                ▼
[ OpenWiki CLI Synthesis ]
  - GLM 5.2 via OpenRouter reads new clean markdown
  - Generates bidirectional [[wiki_links]] in 02_wiki_md/
```

---

### 4. Production Script: convert_raw_to_markdown.py

Runs directly in Termux / Æsc using Python 3 with beginner-proof comments. *(Source snippet cuts off partway into the script body — the `convert_docx()` function is shown starting to iterate `doc.paragraphs` and check heading styles; the rest of the script, and any sections after §4, are not captured here.)*

```python
#!/usr/bin/env python3
"""
convert_raw_to_markdown.py
--------------------------
PURPOSE FOR BEGINNER DEVELOPERS:
This script monitors an incoming folder of messy notes, downloads, or web scrapes
and converts them into clean, standardized Markdown files.
It strips away HTML tags and web interface junk so local AI models only read pure text.
"""
import sys
from pathlib import Path
from datetime import datetime, timezone
import markdownify
from docx import Document

RAW_DIR = Path("~/raw-bucket").expanduser()
OUTPUT_DIR = Path("~/novae-xorpus/01_raw_sources/text").expanduser()

def convert_docx(path: Path) -> str:
    """Reads Microsoft Word .docx files and converts headings and paragraphs to Markdown."""
    doc = Document(str(path))
    lines = []
    for p in doc.paragraphs:
        if p.style.name.startswith("Heading"):
            ...  # source truncated here
```

---

*Source: Google Drive `__NovÆxorpus_LIVING_MASTER_CANON/04_ON_DEVICE_INGESTION_AND_W5H_FRAMEWORK.md` (id `1Rd4WJeTCS4dmRBsddg9GJsyAPPCJ9Ylt02v0prJr6zI`). Placed 2026-09-07 from a search-result content snippet — script body and any later sections cut off. Re-fetch the full document to complete this file.*
