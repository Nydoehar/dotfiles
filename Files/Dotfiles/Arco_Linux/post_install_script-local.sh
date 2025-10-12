#!/bin/bash

# Script to setup a new Arco Linux installation

sudo mkdir -p /mnt/HDD /mnt/NVME #/mnt/SMB_SHARES/Public /mnt/SMB_SHARES/Private
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD
sudo mount -t ntfs UUID=6B4FA4C31DAB7943 /mnt/NVME

bash /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Arco_Linux/post_install_script-local.sh
