#!/bin/bash

# Script to setup a new Arco Linux installation

sudo mkdir -p /mnt/HDD /mnt/NVME 
sudo mount -t ntfs-3g -o uid=1000,gid=1000,rw,user,exec UUID=2B2F6B4529BC9532 /mnt/HDD
sudo mount -t ntfs-3g -o uid=1000,gid=1000,rw,user,exec UUID=6B4FA4C31DAB7943 /mnt/NVME

bash /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Arco_Linux/post_install_script-local-2.sh
