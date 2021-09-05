#! /bin/bash

cd /volume1/docker/services/photoprism

BACKUP_DB="photoprism.backup.sql"

echo "PhotoPrism: Exporting files"
docker exec photoprism photoprism backup -a -i - > backups/$BACKUP_DB

cd backups

echo "PhotoPrism: Archiving files"
tar -czf photoprism.tar.gz $BACKUP_DB -C ../config albums sidecar

echo "PhotoPrism: Cleaning up"

# Cleanup backup DB file
rm -f $BACKUP_DB