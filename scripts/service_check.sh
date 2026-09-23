#!/usr/bin/env bash
source "$(dirname "$0")/../config/server.conf"

for service in $SERVICES; do
  if systemctl is-active --quiet "$service"; then
    echo "OK: $service is running"
  else
    echo "FAIL: $service is not running"
  fi
done
