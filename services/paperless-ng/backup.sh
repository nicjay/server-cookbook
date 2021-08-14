#! /bin/bash

cd /volume1/docker/services/paperless-ng

echo "Paperless-ng: Exporting files"
docker exec -i paperless-ng python3 /app/paperless/src/manage.py document_exporter backups/documents --use-filename-format

# Tar files with timestamp
echo "Paperless-ng: Archiving files"
tar -czf backups/paperless-$(date '+%Y%m%d-%H%M').tar.gz -C backups documents

echo "Paperless-ng: Cleaning up"

# Cleanup tar files older than 30 days
find ./backups/* -iname "*.tar.gz" -mtime +30 -exec rm {} \;