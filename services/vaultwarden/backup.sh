#! /bin/bash
# See https://github.com/dani-garcia/vaultwarden/wiki/Backing-up-your-vault

cd /volume1/docker/services/vaultwarden/config

SOURCE_DB="db.sqlite3"
BACKUP_DB="db.sqlite3-backup" # required
BACKUP_RSA="rsa_key*" # recommended
BACKUP_ATTACHMENTS="attachments" # required
BACKUP_SENDS="sends" # optional

# Create DB backup
echo "Vaultwarden: Dumping database"
sqlite3 "file:${SOURCE_DB}?mode=ro" "VACUUM INTO '${BACKUP_DB}'"

# Tar files with timestamp
echo "Vaultwarden: Archiving files"
tar -czf ../backups/vaultwarden-$(date '+%Y%m%d-%H%M').tar.gz $BACKUP_DB $BACKUP_ATTACHMENTS $BACKUP_RSA $BACKUP_SENDS

echo "Vaultwarden: Cleaning up"

# Cleanup backup DB file
rm -f $BACKUP_DB

# Cleanup tar files older than 30 days
find ../backups/* -iname "*.tar.gz" -mtime +30 -exec rm {} \;