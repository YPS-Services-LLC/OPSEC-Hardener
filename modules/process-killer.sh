#!/usr/bin/env bash
source "$(dirname "$0")/utils.sh"
echo "Scanning processes..."
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 10
read -rp "PID to terminate (or Enter): " pid
[[ -n "$pid" ]] && confirm "Kill $pid?" && kill -9 "$pid" && echo "Killed."
