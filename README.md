### Overview

- Includes docker-compose files and scripts to configure services on my home server. 

- Containers are started and kept up-to-date with [Docker Compose v2](https://github.com/docker/compose). 

- [Diun](https://github.com/crazy-max/diun) is used for update notifications with Discord integration.

- My preferred images are from [linuxserver](https://www.linuxserver.io/) or [hotio](https://hotio.dev/) where possible, otherwise official images from app creators.

- Sensitive information from .env files are populated with variable substitution in compose files.

- [SWAG](https://github.com/linuxserver/docker-swag) reverse proxy is used to expose selected services.

### Current Hardware

- NAS: [Synology DS918+](https://www.synology.com/en-global/support/download/DS918+)
  - Storage: 4x [WD 10TB Elements](https://shop.westerndigital.com/products/external-drives/wd-elements-desktop-usb-3-0-hdd#WDBWLG0100HBK-NESN) (shucked) RAID 5
- UPS: [CyberPower CP1000AVRLCD](https://www.cyberpowersystems.com/product/ups/intelligent-lcd/cp1000avrlcd/)
- Router: [Netgear R7800](https://www.netgear.com/support/product/r7800.aspx)
  - [Voxel Firmware](http://www.voxel-firmware.com/Downloads/Voxel/html/r7800.html)
