#!/bin/bash

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
RESTORE_DIR="$PROJECT_DIR/restored"
LOG_FILE="$PROJECT_DIR/logs/restore.log"

BACKUP_FILE="$1"

if [ -z "$BACKUP_FILE" ] || [ ! -f "$BACKUP_FILE" ]; then
    echo "Usage: ./restore.sh backups/backup_file.tar.gz"
    exit 1
fi

if ! tar -tzf "$BACKUP_FILE" > /dev/null; then
    echo "Invalid backup archive!"
    exit 1
fi

DATE=$(date +%Y%m%d_%H%M%S)
DEST="$RESTORE_DIR/restore_$DATE"

mkdir -p "$DEST"

if tar -xzf "$BACKUP_FILE" -C "$DEST"; then
    echo "$(date): Recovery successful - $DEST" >> "$LOG_FILE"
    echo "Recovery completed successfully!"
    echo "Restored files: $DEST"
else
    echo "$(date): Recovery failed" >> "$LOG_FILE"
    echo "Recovery failed!"
    exit 1
fi
