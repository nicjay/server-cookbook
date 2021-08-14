#! /bin/bash

cd /volume1/docker/services/photoprism

BACKUP_DB="photoprism.backup.sql"

echo "PhotoPrism: Exporting files"
docker exec photoprism photoprism backup -a -i - > backups/$BACKUP_DB

cd backups

# Tar files with timestamp
echo "PhotoPrism: Archiving files"
tar -czf photoprism-$(date '+%Y%m%d-%H%M').tar.gz $BACKUP_DB -C ../config albums sidecar

echo "PhotoPrism: Cleaning up"

# Cleanup backup DB file
rm -f $BACKUP_DB

# Cleanup tar files older than 30 days
find . -iname "*.tar.gz" -mtime +30 -exec rm {} \;