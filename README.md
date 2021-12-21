### Overview

Includes docker-compose files and scripts to configure services on my home server. 

Containers are started and kept up-to-date with [Docker Compose v2](https://github.com/docker/compose).

Preferred images are from [linuxserver](https://www.linuxserver.io/) or [hotio](https://hotio.dev/) where possible, otherwise official images from app creators.

Sensitive information is stored in .env files (not checked into Git) and interpolated in docker-compose.

[SWAG](https://github.com/linuxserver/docker-swag) reverse proxy is utilized for services I wish to expose to the outside world.

### Hardware

- NAS: [Synology DS918+](https://www.synology.com/en-global/support/download/DS918+)
  - Storage: 4x shucked [WD 10TB Elements](https://shop.westerndigital.com/products/external-drives/wd-elements-desktop-usb-3-0-hdd#WDBWLG0100HBK-NESN) in RAID 5
  - Upgrade: 16GB RAM
  - Upgrade: 512GB NVME SSD (Read-only cache)
- UPS: [CyberPower CP1000AVRLCD](https://www.cyberpowersystems.com/product/ups/intelligent-lcd/cp1000avrlcd/)
