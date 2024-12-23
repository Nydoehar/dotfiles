#!/bin/bash

# Script to setup a new Arco Linux installation

sudo mkdir -p /mnt/HDD /mnt/NVME /mnt/SMB_SHARES/Public /mnt/SMB_SHARES/Private
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD
sudo mount -t ntfs UUID=6B4FA4C31DAB7943 /mnt/NVME

cp /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/.smbcredentials ~/

sudo mount -t cifs //192.168.3.155/Public_Files /mnt/SMB_SHARES/Public/ -o uid=1000,gid=1000
sudo mount -t cifs //192.168.3.155/Private_Files /mnt/SMB_SHARES/Private/ -o credentials=/home/yann/.smbcredentials,uid=1000,gid=1000

cp ~/dotfiles/Dotfiles/Arco_Linux/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/Files/Dotfiles/NeoVim/init.lua ~/.config/nvim/
mkdir -p ~/.local/bin
cp ~/dotfiles/Files/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
rm -rf ~/dotfiles/

yes | paru -S brave-bin vlc neovim syncthing veracrypt xsel
#xsel is for neovim to be able to copy to clipboard

cat /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/1-General/bashrc_extras | sudo tee -a ~/.bashrc
cat /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/1-General/fstab_mounts | sudo tee -a /etc/fstab
cat /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/1-General/root_aliases | sudo tee -a /root/.bashrc

mv ~/.local/state/syncthing/config.xml /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Syncthing/
ln -s /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Syncthing/config.xml ~/.local/state/syncthing/

mv ~/.bashrc /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Arco_Linux/
ln -s /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Arco_Linux/.bashrc ~/

mv ~/.bash_aliases /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Arco_Linux/
ln -s /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/Arco_Linux/.bash_aliases ~/

mv ~/.config/nvim/init.lua /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/NeoVim/
ln -s /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles/NeoVim/init.lua ~/.config/nvim/

#cp -r /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Brave-Browser ~/.config/BraveSoftware/
#cp -r /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/transmission ~/.config/

# TO DO: Put synchthing to start on boot on qTile.

exec bash
