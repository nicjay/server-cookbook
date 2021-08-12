#! /bin/bash

BACKUP_DB="photoprism.backup.sql"

docker exec photoprism photoprism backup -a -i - > backups/$BACKUP_DB

cd backups

# Tar files with timestamp
tar -czf photoprism-$(date '+%Y%m%d-%H%M').tar.gz $BACKUP_DB -C ../config albums sidecar

# Delete db dump
rm -rf $BACKUP_DB