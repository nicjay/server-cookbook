#! /bin/bash

# Run all custom service backup scripts in parallel
# Navigate to paths in Subshells

(cd /volume1/docker/services/bookstack ; bash backup.sh) &
(cd /volume1/docker/services/paperless-ng ; bash backup.sh) &
(cd /volume1/docker/services/photoprism ; bash backup.sh) &
(cd /volume1/docker/services/vaultwarden ; bash backup.sh) &

# Wait for sub scripts to finish, allowing this script to finish
wait

# Ping Healthchecks
#curl http://192.168.1.2:8008/ping/7e050647-99ba-4385-8273-e4c645465d3e