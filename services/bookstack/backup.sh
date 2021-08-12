#! /bin/bash

BACKUP_DB="bookstack.backup.sql"

# Load vars from local .env
if [ -f .env ]; then
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
fi

# Create db dump, auto-enter PW when prompted. Note bash -c required to interpolate our env vars inside docker exec
echo $MYSQL_PASSWORD | docker exec -i bookstack-db bash -c '/usr/bin/mysqldump -u ${MYSQL_USER} -p ${MYSQL_DATABASE}' > backups/$BACKUP_DB

cd backups

# Tar files with timestamp
tar -czf bookstack-$(date '+%Y%m%d-%H%M').tar.gz $BACKUP_DB -C ../config www

# Delete db dump
rm -rf $BACKUP_DB