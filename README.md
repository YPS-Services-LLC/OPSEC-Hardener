<h1 align="center">⚙️ Opsec Hardener v3.1 — Interactive Edition</h1>
<p align="center">
  <b>YPS Services LLC — B20250292295</b><br>
  AUS: +61 3 8907 8593 | USA: +1 (213) 528-8185<br>
  ✉ <a href="mailto:contact@yps.services">contact@yps.services</a><br>
  <a href="https://github.com/YPS-Services-LLC/Sys-Snapshots">github.com/YPS-Services-LLC/Sys-Snapshots</a>
</p>
<p align="center">
  <img src="https://github.com/YPS-Services-LLC/OPSEC-Hardener/blob/main/assets/watermark-505953-angled.svg" width="120" height="80"><br>
  <img src="https://img.shields.io/badge/version-v3.1-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/platform-Fedora%20%7C%20Ubuntu-green?style=for-the-badge" alt="platform badge">
  <img src="https://img.shields.io/badge/status-Stable-orange?style=for-the-badge">
</p>

---

### 🧭 Overview

**Opsec Hardener v3.1 Interactive Edition** provides real-time system inspection,  
network lockdown, and baseline integrity validation.

It complements the YPS toolchain (*Password Manager&nbsp;v2.x*, *Sys-Snapshots&nbsp;v1.1*, *AI&nbsp;Integer*)  
with consistent automation and audit standards.

---

### 🧱 Core Features

| Category | Description |
|-----------|-------------|
| 🔍 **Interactive Process Analyzer** | Lists live processes with contextual hints (purpose, CPU, sockets) and asks `y/N` before kill. |
| 🧩 **Baseline Comparator** | Verifies system files against `/var/yps/sys-snapshots/base.hash` from Sys-Snapshots v1.1. |
| 🔒 **Network Hardening** | Audits UPNP, firewall, Wi-Fi/Ethernet modes, and supports temporary MAC spoofing. |
| 🧠 **Smart Pre-flight** | Detects environment (GUI vs TUI) and adjusts interface automatically. |
| 🧾 **Logging & Audit** | Writes detailed reports to `/var/log/yps/` for traceability. |

---

### ⚙️ Installation

```bash
# install prerequisites
sudo dnf install -y zip coreutils util-linux || sudo apt install -y zip coreutils util-linux

# extract package
unzip opsec-hardener-v3.1-final.zip -d ~/opsec-hardener
cd ~/opsec-hardener

# run installer
sudo ./install.sh

git push origin main
echo "✅ README.md updated and pushed to main."
<h1 align="center">⚙️ Opsec Hardener v3.1 — YPS Services LLC</h1>
<p align="center">
  <b>YPS Services LLC — B20250292295</b><br>
  AUS: +61 3 8907 8593 | USA: +1 (213) 528-8185<br>
  ✉ <a href="mailto:contact@yps.services">contact@yps.services</a><br>
  <a href="https://github.com/YPS-Services-LLC/OPSEC-Hardener">github.com/YPS-Services-LLC/OPSEC-Hardener</a>
</p>
<p align="center">
  <img src="assets/watermark-505953-angled.svg" width="120" height="80"><br>
  <img src="https://img.shields.io/badge/version-v3.1-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/license-MIT-green?style=for-the-badge">
  <img src="https://img.shields.io/badge/status-Stable-orange?style=for-the-badge">
</p>

## Overview
**Opsec Hardener** is an interactive security hardening tool for Fedora/Ubuntu. It scans processes, compares against a **Sys‑Snapshots** baseline, and offers **guided decisions** with plain‑English explanations (purpose, last use, criticality, safe to kill). Includes network hardening presets.

## Features
- 🧪 Process analyzer with **y/N** interactive suggestions
- 🧭 Baseline comparator (uses Sys‑Snapshots v2.x as ground truth)
- 🔥 Firewall tightening (block UPNP, close unnecessary ports)
- 📡 Network profiles: Wi‑Fi‑only / Ethernet‑only
- 🕵️ MAC spoofing helper (opt‑in)
- 🧱 SELinux/ufw checks and recommendations

## Install
```bash
# Fedora 42+
sudo dnf install -y iproute nftables ethtool
# Ubuntu 24.04+
sudo apt install -y iproute2 nftables ethtool

git clone https://github.com/YPS-Services-LLC/OPSEC-Hardener.git
cd OPSEC-Hardener
```

## Usage
```bash
[yps@localhost]$ opsec --prefight         # choose GUI/CLI mode (when GUI available)
[yps@localhost]$ opsec --scan              # analyze processes and services
[yps@localhost]$ opsec --compare baseline  # compare against Sys‑Snapshots baseline
[yps@localhost]$ opsec --firewall tighten  # apply firewall hardening
[yps@localhost]$ opsec --network wifi-only # toggle network profile
```

### Interactive sample
```text
Process: avahi-daemon (mDNS) — purpose: local discovery
Status: running; last activity 4m ago; not used by critical services
Suggestion: disable + kill now? [y/N]
```

## Safety
- Always review suggestions; do not kill processes on production hosts without maintenance window.
- Keep system backups and recent Sys‑Snapshots baselines.

## License
MIT License · © 2025 YPS Services LLC

<hr>
<p align="center">
  <sub>© 2025 YPS Services LLC — B20250292295 · All Rights Reserved</sub><br>
  <sub>
    <a href="https://github.com/YPS-Services-LLC/OPSEC-Hardener">⚙️ Opsec Hardener v3.1</a> ·
    <a href="https://github.com/YPS-Services-LLC/Sys-Snapshots">🧠 Sys-Snapshots v2.0</a> ·
    <a href="https://github.com/YPS-Services-LLC/Password-MGR">🔐 Password-MGR v2.1</a>
  </sub>
</p>
