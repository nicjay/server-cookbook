#! /bin/bash

cd /volume1/docker/services/bookstack

BACKUP_DB="bookstack.backup.sql"

# Load vars from local .env
if [ -f .env ]; then
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
fi

# Create db dump, auto-enter PW when prompted. Note bash -c required to interpolate our env vars inside docker exec
echo "BookStack: Dumping database"
echo $MYSQL_PASSWORD | docker exec -i bookstack-db bash -c '/usr/bin/mysqldump -u ${MYSQL_USER} -p ${MYSQL_DATABASE}' > backups/$BACKUP_DB

cd backups

# Tar files with timestamp
echo "BookStack: Archiving files"
tar -czf bookstack-$(date '+%Y%m%d-%H%M').tar.gz $BACKUP_DB -C ../config www

echo "BookStack: Cleaning up"

# Cleanup backup DB file
rm -f $BACKUP_DB

# Cleanup tar files older than 30 days
find . -iname "*.tar.gz" -mtime +30 -exec rm {} \;