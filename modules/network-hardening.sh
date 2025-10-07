#!/usr/bin/env bash
source "$(dirname "$0")/utils.sh"
echo "UPnP check:"; pgrep -x miniupnpd >/dev/null && echo "UPnP running" || echo "No UPnP."
echo "Interfaces:"; ip -o link show | awk -F': ' '{print $2}'
