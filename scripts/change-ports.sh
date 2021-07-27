#! /bin/bash

# Remaps Synology nginx default ports from 80/443 > 81/444 so other services can use 80/443
# View port usage: sudo netstat -lp --numeric-ports

HTTP_PORT=81
HTTPS_PORT=444

sed -i "s/^\( *listen .*\)80/\1$HTTP_PORT/" /usr/syno/share/nginx/*.mustache
sed -i "s/^\( *listen .*\)443/\1$HTTPS_PORT/" /usr/syno/share/nginx/*.mustache