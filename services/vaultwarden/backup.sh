#! /bin/bash
# See https://github.com/dani-garcia/vaultwarden/wiki/Backing-up-your-vault

cd /volume1/docker/services/vaultwarden/config

SOURCE_DB="db.sqlite3"
BACKUP_DB="db.sqlite3-backup" # required
BACKUP_RSA="rsa_key*" # recommended
BACKUP_ATTACHMENTS="attachments" # required
BACKUP_SENDS="sends" # optional

echo "Vaultwarden: Dumping database"
sqlite3 "file:${SOURCE_DB}?mode=ro" "VACUUM INTO '${BACKUP_DB}'"

echo "Vaultwarden: Archiving files"
tar -czf ../backups/vaultwarden.tar.gz $BACKUP_DB $BACKUP_ATTACHMENTS $BACKUP_RSA $BACKUP_SENDS

echo "Vaultwarden: Cleaning up"
rm -f $BACKUP_DB