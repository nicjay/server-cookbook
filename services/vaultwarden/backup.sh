#! /bin/bash
# See https://github.com/dani-garcia/vaultwarden/wiki/Backing-up-your-vault

cd config

SOURCE_DB="db.sqlite3"
BACKUP_DB="db.sqlite3-backup" # required
BACKUP_RSA="rsa_key*" # recommended
BACKUP_CONFIG="config.json" # recommended
BACKUP_ATTACHMENTS="attachments" # required
BACKUP_SENDS="sends" # optional

# Create DB backup
sqlite3 "file:${SOURCE_DB}?mode=ro" "VACUUM INTO '${BACKUP_DB}'"

# Tar files with timestamp
tar -czf ../backups/vaultwarden-$(date '+%Y%m%d-%H%M').tar.gz $BACKUP_DB $BACKUP_ATTACHMENTS $BACKUP_RSA $BACKUP_CONFIG $BACKUP_SENDS

# Cleanup backup DB file
rm -rf $BACKUP_DB