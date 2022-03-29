#! /bin/bash

cd /volume1/docker/services/paperless-ngx

# Create documents directory if doesn't exist
mkdir -p backups/documents

echo "Paperless-ngx: Exporting files"
docker exec -i paperless-ngx manage document_exporter backups/documents --use-filename-format

echo "Paperless-ngx: Archiving files"
tar -czf backups/paperless.tar.gz -C backups documents

echo "Paperless-ngx: Cleaning up"
rm -rf backups/documents