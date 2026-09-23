#!/usr/bin/env bash
THRESHOLD=80
usage=$(df -P / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -gt "$THRESHOLD" ]; then
  echo "WARNING: disk usage ${usage}% is above ${THRESHOLD}%"
  exit 1
fi
echo "OK: disk usage ${usage}%"
