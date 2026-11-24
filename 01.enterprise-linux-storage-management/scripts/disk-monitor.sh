#!/bin/bash

MOUNT="appdata"
THRESHOLD=80

if ! mountpoint -q "$MOUNT"; then
    echo "ERROR: $MOUNT is not mounted"
    exit 1
fi

USAGE=$(df -P "$MOUNT" | awk 'NR==2 {
    gsub("%","",$5)
    print $5
}')

echo "===== DISK MONITOR ====="
echo "Mount Point: $MOUNT"
echo "Disk Usage: $USAGE%"

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is HIGH!"
else
    echo "STATUS: Disk usage is NORMAL"
fi

echo "========================"
