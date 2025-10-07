#!/usr/bin/env bash
source "$(dirname "$0")/utils.sh"
BASE="/var/yps/sys-snapshots/base.hash"
[[ ! -f $BASE ]] && echo "No baseline found at $BASE" && exit 1
echo "Comparing baseline to live..."
awk '{print $2}' "$BASE" | while read -r f; do
  [[ -f $f ]] || echo "$(timestamp) REMOVED $f"
done
