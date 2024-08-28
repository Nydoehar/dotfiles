#!/bin/bash

# Script to setup a new Arco Linux installation

cp ~/dotfiles/Dotfiles/Arco_Linux/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/Dotfiles/Symlinks/init.lua ~/.config/nvim/
mkdir -p ~/.local/bin
cp ~/dotfiles/Dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
rm -rf ~/dotfiles/

yes | paru -S brave-bin vlc neovim timeshift xfce4-appfinder syncthing veracrypt

sudo mkdir -p /mnt/HDD /mnt/NVME /mnt/SMB_SHARES/Public /mnt/SMB_SHARES/Private
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD
sudo mount -t ntfs UUID=6B4FA4C31DAB7943 /mnt/NVME
sudo mount -t cifs //192.168.3.155/Public_Files /mnt/SMB_SHARES/Public/ -o uid=1000,gid=1000
sudo mount -t cifs //192.168.3.155/Private_Files /mnt/SMB_SHARES/Private/ -o credentials=/home/yann/.smbcredentials,uid=1000,gid=1000

#cat /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/bashrc_extras | sudo tee -a ~/.bashrc
#cat /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/fstab_mounts | sudo tee -a /etc/fstab
#cat /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/root_aliases | sudo tee -a /root/.bashrc

#cp -r /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Brave-Browser ~/.config/BraveSoftware/
#cp -r /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/transmission ~/.config/

exec bash

