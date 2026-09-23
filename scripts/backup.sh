#!/usr/bin/env bash
set -e
source "$(dirname "$0")/../config/server.conf"

mkdir -p "$BACKUP_DIR"
file="$BACKUP_DIR/backup-$(date +%F).tar.gz"
tar -czf "$file" "$BACKUP_SRC"
echo "Backup saved: $file"
