# bazzite-hyperreal

This is my custom build of UBlue OS Bazzite. It isn't anything remarkable.

## Features

- Based on `bazzite-nvidia-open:stable`.
- [Bazzite features](https://bazzite.gg)
- [VSCodium](https://vscodium.com/)
- atop
- borgbackup
- borgmatic
- btrfs-assistant
- Prometheus node-exporter

In contrast to the default Bazzite settings, the following systemd units are disabled by default in this build:

- bluetooth.service
- cups.service
- zfs-mount.service
- zfs-share.service
- zfs-zed.service

## Installation

```shell
sudo bootc switch --enforce-container-sigpolicy ghcr.io/hyperreal64/bazzite-hyperreal:latest
sudo systemctl reboot
```
