# Repo map — the federation

Locked 2026-09-05. Hybrid structure. Display names keep the ligature; anything
that becomes a URL, repo, package or path uses the lowercase flattened form
(`Æ` → `ae`). Authority: `NAMING-CANON.md`.

## Repos

| Display | Repo | Status | Holds |
|---|---|---|---|
| **NovÆxorpus** | `novae-xorpus` | EXISTS | The vault / universal Data Bank. `data_vault/` 5+1 tiers, the master wiki, canon. This repo. |
| **Æsop-Xi** | `aesop-xi` | EXISTS | Memory layer, context formatting, tool/context orchestration, ethical ops + agent protocols. |
| **NovÆxenti** | `novae-aexenti` | ⚠ created as `novus-aexenti` — needs rename | Agent logic. Personas, harness configs, agent manifests. |
| **NovÆxopia** | `novaexopia` | EXISTS ✅ | Agent tools, harness, engine — the "claw". Runtimes, engines, weight configs. |
| **Æsc** | `novae-aesc` | ⚠ created as `novus-aesc` — needs rename | Terminal daemon APK. Build order target #2. |
| **Æyre** | `novae-aeyre` | ⚠ created as `novus-aeyre` — needs rename | Android media daemon — voice AND vision. STT, TTS, VAD, camera. |
| — | `skills-and-capabilities` | **CREATE** | **The skills/tools EXTRACTION LAYER** — the machinery that turns docs into skills and tools. The skills themselves live in the corpus (`novae-xorpus`), not here. |
| **Horizons-Ui** | `horizons-ui` | EXISTS | The UI. Salvage source — see salvage philosophy below. |
| — | `openwiki` | EXISTS (fork) | `c10vis-poem/openwiki`, upstream `langchain-ai/openwiki`. Has real NPU/voice commits. |
| — | `OB1` | EXISTS | Postgres vector protocol (Open Brain). |
| — | `ECC-aesop` | EXISTS | Everything Claude Code plugin. |
| — | `claude-code-android` | EXISTS | Android Claude Code work. |
| — | `raw-database` | EXISTS | **Salvage yard / workbench.** Dump space. NOT a vault tier — no provenance guarantees, nothing here is canonical. Do not confuse with `data_vault/01_raw_sources/`. |

**Structural note:** the three runtime components (Horizons-Ui, Æsc, Æyre) run
**independently**. Horizons-Ui is the *most* independent of them, not the least —
it has its own browser, file pickers, chat interface and model loading, and does
not require either daemon to function. Any document claiming the UI "cannot
function without" the daemons is superseded.

## The 12 top-level cuts

Five project repos + vendor cuts + shared infrastructure:

```
aesop-xi/                  protocols, memory layer, orchestration
novae-aexenti/             agent logic
novaexopia/                tools, harness, engine
skills-and-capabilities/   skills/tools EXTRACTION LAYER (skills live in the corpus)
data_vault/                the corpus (inside novae-xorpus)
google/                    vendor — platform, android, models, gemini, credits
qualcomm/                  vendor — qairt, hexagon, qat, genie bundles  [REFERENCE SHAPE]
nvidia/                    vendor — jetson, cuda, models
github/                    vendor — owned, forked, watched, actions
anthropic/                 vendor — claude-code, mcp, plugins, api
primeintellect/            vendor — prime-agent, env-hub
deepseek/                  vendor — harness (coming), models
tools/                     shared executables
```

Vendor cuts live inside the vault at `data_vault/02_wiki_md/vendors/<vendor>/`.
They are **derive-from-function**: each vendor's folder shape comes from what that
vendor does in this stack, not from a shared template. Qualcomm is the locked
reference implementation.

## Node topology

| Node | Hardware | Role |
|---|---|---|
| **Alpha** | Moto Razr (Snapdragon, Hexagon v79 NPU) | Primary edge. 9-12 GB usable RAM. On-device inference. |
| **Beta** | Jetson Orin Nano Super, 8 GB LPDDR5 | Home node. CUDA, 60-70 TOPS. Postgres authoritative. **Not procured yet.** |
| **Gamma** | Rubik Pi | Aux node. **Not procured yet.** |
| **Delta** | GCP | Cloud tier. Training flywheel, escalation target. |

## Salvage philosophy — Horizons repo

**Salvage, don't preserve.** Keep only these 5 targets; everything else goes to
the junkyard:

1. NPU loader
2. ADB loopback ("the laptop trick")
3. Chromium integration
4. Terminal render
5. Model router

The Watchdog daemon needs fixing via `ForegroundService` before Æsc can rely on it.

## Immediate build order (operator-declared, do not re-sequence)

1. **DroidDesk install** — phone + tablet. Termux:X11 rendering, standalone
   desktops on each device independently (not phone→tablet mirroring; scrcpy
   explicitly ruled out for this).
2. **Æsc terminal daemon** — salvage the 5 targets, fix Watchdog via
   ForegroundService.
3. **Fold Termux-era work into Æsc** — rewrite scripts for the native APK.

**Do not start yet:** grill session, new repo build-out beyond shells, Œræcle
wiring, model weights into novaexopia, DeepSeek harness spec, vendor-workspace
skill.
