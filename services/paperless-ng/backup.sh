#! /bin/bash

docker exec -i paperless-ng python3 /app/paperless/src/manage.py document_exporter backups/documents --use-filename-format

# Tar files with timestamp
tar -czf backups/paperless-$(date '+%Y%m%d-%H%M').tar.gz -C backups documents