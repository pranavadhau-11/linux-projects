#!/bin/bash

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$PROJECT_DIR/source"
BACKUP_DIR="$PROJECT_DIR/backups"
LOG_FILE="$PROJECT_DIR/logs/backup.log"

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR" "$PROJECT_DIR/logs"

if tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .; then
    echo "$(date): Backup successful - $BACKUP_FILE" >> "$LOG_FILE"
    echo "Backup completed successfully!"
else
    echo "$(date): Backup failed" >> "$LOG_FILE"
    echo "Backup failed!"
    exit 1
fi
