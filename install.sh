#!/usr/bin/env bash
set -e
install -Dm755 opsec-hardener.sh /usr/local/bin/opsec-hardener
install -Dm644 opsec-hardener.service /etc/systemd/system/opsec-hardener.service
mkdir -p /var/log/yps
echo "[ YPS Services LLC — B20250292295 ]"
echo "Opsec Hardener v3.1 Interactive Edition installed."
echo "Run: sudo opsec-hardener"
