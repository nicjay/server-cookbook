#! /bin/bash

cd /volume1/docker/services/paperless-ng

# Create documents directory if doesn't exist
mkdir -p backups/documents

echo "Paperless-ng: Exporting files"
docker exec -i paperless-ng manage document_exporter backups/documents --use-filename-format

echo "Paperless-ng: Archiving files"
tar -czf backups/paperless.tar.gz -C backups documents

echo "Paperless-ng: Cleaning up"
rm -rf backups/documents