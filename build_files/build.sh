#!/bin/bash

set -ouex pipefail

# Install packages
dnf5 install -y atop borgbackup borgmatic btrfs-assistant firefox nmap node-exporter yakuake

# Install VSCodium
VSCODIUM_RPM_URL=$(curl --silent "https://api.github.com/repos/VSCodium/vscodium/releases/latest" | grep "browser_download_url" | grep "x86_64.rpm" | cut -d : -f 2,3 | tr -d '" ' | head -n 1)
dnf5 install -y $VSCODIUM_RPM_URL

# Enable services
systemctl enable atop.service
systemctl enable atopacct.service
systemctl enable atop-rotate.timer
systemctl enable podman.socket
systemctl enable prometheus-node-exporter.service

# Disable services
systemctl disable bluetooth.service
systemctl disable cups.service
systemctl disable zfs-mount.service
systemctl disable zfs-share.service
systemctl disable zfs-zed.service
