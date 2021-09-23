#!/usr/bin/env bash

set -eux

echo "Backup started at $(date)"

BACKUP_FILENAME=backup.tar.gz

./b2 authorize-account "$B2_KEY_ID" "$B2_APP_KEY"

tar -zcf /tmp/"$BACKUP_FILENAME" /var/backups

./b2 upload-file "$B2_BUCKET" /tmp/"$BACKUP_FILENAME" "$BACKUP_FILENAME"

echo "Backup finished at $(date)"
