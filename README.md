### Overview

Includes docker-compose files and scripts to configure services on my home server. 

Containers are started with images from [linuxserver](https://www.linuxserver.io/) or [hotio](https://hotio.dev/) or official images from app creators where possible.

Sensitive information is stored in .env files (not checked into Git) and interpolated in docker-compose.

Attempts to follow the latest [compose spec](https://github.com/compose-spec/compose-spec).

### Self-hosted Services

- [BookStack](https://github.com/BookStackApp/BookStack) - Personal wiki
- [Diun](https://github.com/crazy-max/diun) - Docker update notifications
- [Dozzle](https://github.com/amir20/dozzle) - Docker log viewer
- [Duplicacy](https://github.com/gilbertchen/duplicacy) - Cloud backup utility
- [Healthchecks](https://github.com/healthchecks/healthchecks) - Task monitoring
- [Homer](https://github.com/bastienwirtz/homer) - Personal dashboard
- [Mealie](https://github.com/hay-kot/mealie) - Recipe manager
- [Paperless-ng](https://github.com/jonaswinkler/paperless-ng) - Document indexer
- [PhotoPrism](https://github.com/photoprism/photoprism) - Photo manager
- [Portainer](https://github.com/portainer/portainer) - Docker management GUI
- [RedBot](https://github.com/Cog-Creators/Red-DiscordBot) - Discord bot
- [Valheim Server](https://github.com/lloesche/valheim-server-docker) - Containerized Valheim server
- [Vaultwarden](https://github.com/dani-garcia/vaultwarden) - Password manager

#### Media Stack

- [Flood](https://github.com/jesec/flood) - Modern rTorrent WebUI
- [Lidarr](https://github.com/Lidarr/Lidarr) - Music collector
- [Overseerr](https://github.com/sct/overseerr) - Media requester
- [Plex](https://github.com/linuxserver/docker-plex) - Media server
- [Prowlarr](https://github.com/Prowlarr/Prowlarr) - Tracker indexer
- [Radarr](https://github.com/Radarr/Radarr) - Movie collector
- [Readarr](https://github.com/Readarr/Readarr) - Book collector
- [Sonarr](https://github.com/Sonarr/Sonarr) - TV collector

#### Proxy Stack

- [SWAG](https://github.com/linuxserver/docker-swag) - All-in-one web server and reverse proxy
- [Authelia](https://github.com/authelia/authelia) - Authentication portal


### Hardware

- NAS: [Synology DS918+](https://www.synology.com/en-global/support/download/DS918+)
  - Storage: 4x shucked [WD 10TB Elements](https://shop.westerndigital.com/products/external-drives/wd-elements-desktop-usb-3-0-hdd#WDBWLG0100HBK-NESN) in RAID 5
  - Upgrade: 16GB RAM
  - Upgrade: 512GB NVME SSD (Read-only cache)
- UPS: [CyberPower CP1000AVRLCD](https://www.cyberpowersystems.com/product/ups/intelligent-lcd/cp1000avrlcd/)

### Useful Commands:

> docker-compose pull
> 
> docker-compose up -d --remove-orphans
> 
> docker image prune
