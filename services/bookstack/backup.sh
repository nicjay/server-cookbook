#! /bin/bash

cd /volume1/docker/services/bookstack

BACKUP_DB="bookstack.backup.sql"

# Load vars from local .env
if [ -f .env ]; then
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
fi

# Create db dump. Note bash -c required to interpolate our env vars inside docker exec
echo "BookStack: Dumping database"
docker exec -i bookstack-db bash -c 'mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE' > backups/$BACKUP_DB

cd backups

echo "BookStack: Archiving files"
tar -czf bookstack.tar.gz $BACKUP_DB -C ../config www

echo "BookStack: Cleaning up"
rm -f $BACKUP_DB