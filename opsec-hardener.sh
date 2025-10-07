#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
LOG_DIR="/var/log/yps"; mkdir -p "$LOG_DIR"
source "$DIR/modules/utils.sh"
banner
PS3="Select option: "
select o in "Scan processes" "Compare baseline" "Network hardening" "Exit"; do
  case $REPLY in
    1) "$DIR/modules/process-killer.sh" ;;
    2) "$DIR/modules/baseline-compare.sh" ;;
    3) "$DIR/modules/network-hardening.sh" ;;
    4) echo "Done."; exit 0 ;;
  esac
done
