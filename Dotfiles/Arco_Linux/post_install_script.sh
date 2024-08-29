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
cp ~/dotfiles/Dotfiles/Symlinks/init.lua ~/.config/nvim/
mkdir -p ~/.local/bin
cp ~/dotfiles/Dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
rm -rf ~/dotfiles/

cat /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/bashrc_extras | sudo tee -a ~/.bashrc
cat /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/fstab_mounts | sudo tee -a /etc/fstab
cat /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/root_aliases | sudo tee -a /root/.bashrc

mv ~/.local/state/syncthing/config.xml /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Symlinks/Syncthing/
ln -s /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Symlinks/Syncthing/config.xml ~/.local/state/syncthing/

mv ~/.bashrc /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Arco_Linux/
ln -s /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Arco_Linux/.bashrc ~/

mv ~/.bash_aliases /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Arco_Linux/
ln -s /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Arco_Linux/.bash_aliases ~/

mv ~/.config/nvim/init.lua /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Symlinks/
ln -s /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Symlinks/init.lua ~/.config/nvim/

yes | paru -S brave-bin vlc neovim timeshift xfce4-appfinder syncthing veracrypt

#cp -r /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/Brave-Browser ~/.config/BraveSoftware/
#cp -r /mnt/HDD/MY_STUFF/TECH/Configs/Dotfiles/transmission ~/.config/

exec bash

