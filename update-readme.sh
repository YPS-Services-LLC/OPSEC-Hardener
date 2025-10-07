#!/usr/bin/env bash
# ==========================================================
#  YPS Services LLC — README Deployment Script
#  Opsec Hardener v3.1 Interactive Edition
# ==========================================================
set -e

REPO_DIR="${1:-/home/ypsservicesllc/root/OPSEC-Hardener}"
cd "$REPO_DIR" || { echo "Repo not found: $REPO_DIR"; exit 1; }

cat > README.md <<'EOF'
<!--
YPS Services LLC — Opsec Hardener v3.1 Interactive Edition
-->

<h1 align="center">⚙️ Opsec Hardener v3.1 — Interactive Edition</h1>

<p align="center">
<b>YPS Services LLC — B20250292295</b><br>
AUS: +61&nbsp;3&nbsp;8907&nbsp;8593&nbsp;&nbsp;|&nbsp;&nbsp;USA:&nbsp;+1&nbsp;(213)&nbsp;528-8185<br>
✉ <a href="mailto:contact@yps.services">contact@yps.services</a><br>
<a href="https://github.com/YPS-Services-LLC/OPSEC-Hardener">github.com/YPS-Services-LLC/OPSEC-Hardener</a>
</p>

---

<p align="center">
  <img src="assets/watermark-505953-angled.svg" width="120" height="80" alt="YPS watermark"><br>
  <img src="https://img.shields.io/badge/version-3.1-blue?style=for-the-badge" alt="version badge">
  <img src="https://img.shields.io/badge/license-MIT-green?style=for-the-badge" alt="license badge">
  <img src="https://img.shields.io/badge/platform-Fedora%20%7C%20Ubuntu-orange?style=for-the-badge" alt="platform badge">
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
EOF
