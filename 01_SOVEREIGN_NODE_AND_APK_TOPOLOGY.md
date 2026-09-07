# 01_SOVEREIGN_NODE_AND_APK_TOPOLOGY.md

## Decoupled 3-APK Architecture, DroidDesk, ADB Loopback & Sovereign Node Mesh

### 1. Document Scope & Supersession Notice

This specification unifies, standardizes, and consolidates the operational architecture defined across:
- Copy of The 3-APK Native Topology & The Concierge Dataflow..txt
- The Consolidated Master README (/master_build-guide/README.md)
- Branding ligature
- What and Why.txt & Where and When.txt (W5/H Architecture Matrix)

---

### 2. The Decoupled 3-APK Native Architecture

To prevent Android's Low Memory Killer (LMK) from terminating background agent execution and to bypass application sandbox restrictions without rooting, the on-device environment is split into three independent native processes communicating over local UNIX domain sockets (AF_UNIX) and WebSockets:

- **Horizons UI (APK 1)** — Master Visual Shell & Concierge: Chromium WebView (HTML5/React UI), persistent WebSocket client to background daemons, chat tiles/terminal visualizer/model picker/uploader, fallback routing to OmniRoute/OpenRouter API.
- **Æsc (APK 2)** — Terminal & Shell Daemon (`/dev/socket/aesc_shell.sock`): complete Termux replacement, OS Accessibility & Assistant role, local ADB loopback (`localhost:5555`), runs background CLI agent loops.
- **Æyre (APK 3)** — Media & Sensory Daemon (`/dev/socket/aeyre_media.sock`): Silero VAD audio stream, Moonshine Small ONNX (STT), Kokoro-82m/Sherpa (TTS), Video Game SDK screen vision.

#### Why 3 APKs instead of one
If an LLM runs inside the same process that draws buttons and text on the Android screen, the app freezes whenever the model thinks (GC pauses). If the model runs out of memory, the whole app crashes to the home screen. Decoupling means: a crash in Æsc never flickers the Horizons UI screen; Æyre captures voice continuously via Silero VAD without stuttering even under Æsc CPU load; each daemon runs its own optimized Linux permissions.

---

### 3. The Local ADB Loopback Architecture

Android's `adbd` runs elevated as UID `shell` (2000); standard apps run isolated (`u0_a245`). Wireless Debugging exposes `adbd` over local TCP loopback (`127.0.0.1`). Æsc connects to itself via this loopback:
1. Authentication: Æsc generates an onboard RSA key pair (`~/.android/adbkey`).
2. Local pairing: user enters the 6-digit code once via `adb pair 127.0.0.1:<pairing_port>`.
3. Local connection: on every device boot, Æsc runs `adb connect 127.0.0.1:<port>`.
4. Sandbox evasion: commands through the local ADB shell run outside the app sandbox with UID 2000, letting Æsc spawn background daemons that survive app restarts.

---

### 4. DroidDesk & Salvaging the Horizons Repo

- **The problem with Termux**: sandboxed app constraints, struggles with raw audio streams, wake-lock hacks, poor external-display interaction.
- **The fix**: salvage the native C++/Java codebase from the original Horizons repo — terminal shell engine, ADB loopback client, NPU offload libraries — compiled directly into the standalone Æsc APK.
- **DroidDesk Workstation Mode**: docked to external monitors (via Node Gamma / Rubik Pi 3), launches an optimized multi-window desktop interface powered by Node.js and OpenWiki CLI, making Termux obsolete.

---

### 5. Sovereign 3-Node Hardware Mesh

| Node | Hardware | OS | Primary Responsibilities |
|---|---|---|---|
| Node Alpha (Mobile Engine) | Motorola RAZR Ultra 2025 (Snapdragon 8 Elite / Hexagon v79) | Android 15 + Æsc/Æyre daemons | Primary on-device controller. Runs local Qwen 3.5 weights on NPU, Horizons UI, voice pipelines, mobile ADB loopback. |
| Node Beta (Compute Server) | NVIDIA Jetson Orin Nano Super (8GB / CUDA) | Ubuntu Server LTS (headless) | Central database hub. Hosts PostgreSQL, OB1 vector protocol, heavy background reasoning models, cross-node audit logs. |
| Node Gamma | Rubik Pi 3 (Dragonwing) | — | *(source truncated at this point — see live Drive doc for the rest of this row and any further sections)* |

---

*Source: Google Drive `__NovÆxorpus_LIVING_MASTER_CANON/01_SOVEREIGN_NODE_AND_APK_TOPOLOGY.md` (id `10K8oIQojpKYjQ21cbRPPSIJewnUXi11Ahvj4rvdv80k`). Placed 2026-09-07 from a search-result content snippet, not a full `read_file_content` fetch — the source cuts off mid-table at Node Gamma. Re-fetch the full document to complete this file if more sections exist beyond what's here.*
