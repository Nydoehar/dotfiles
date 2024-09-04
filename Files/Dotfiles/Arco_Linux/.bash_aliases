### MY ALIASES

alias c='clear && ls --color=auto -Ash --group-directories-first && exec bash'
alias ca='clear && ls --color=auto -Ssh --group-directories-first && exec bash'
alias a='cd .. && c'
alias e='exit'

alias update='sudo timeshift-gtk && paru -Sy archlinux-keyring --noconfirm && paru -Syu --noconfirm'
alias search='paru -Ss '
alias install='paru -S '
alias remove='paru -R '

alias off='sudo shutdown now'
alias restart='sudo shutdown -r now'
alias suspend='systemctl suspend'

d() {
	cd "$1" && c
}

go() {
  folder_tofind=$(find . -maxdepth 1 -type d -iname "*$1*" | head -n 1)
  cd "$folder_tofind"
  c
  # Usage: enters the folder containing the TERM you entered.
  # Usage: go dung < enters the folder Dungeons and Dragons.
}

o() {
  (xdg-open "$1" && c)
}

nv() {
	nvim "$1" && c 
}

alias dv='nv ~/.config/nvim/init.lua && c' 
alias dh='nv ~/.bash_history && c' 
alias da='nv ~/.bash_aliases && c' 
alias dr='nv ~/.bashrc' 

######             ######
######   FOLDERS   ######
######             ######

alias home='cd ~/ && c'
alias stuff='cd /mnt/HDD/MY_STUFF/ && c'

alias games='cd /mnt/NVME/Games/ && c'

alias misc='cd /mnt/HDD/MY_STUFF/MISC/ && c'
alias notes='cd /mnt/HDD/MY_STUFF/MISC/Notes && c'

alias tech='cd /mnt/HDD/MY_STUFF/TECH/ && c'
alias apps='cd /mnt/HDD/MY_STUFF/TECH/Apps/ && c'
alias conf='cd /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/ && c'
alias scri='cd /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Scripts && c'
alias dot='cd /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Dotfiles && c'

alias videos='cd /mnt/HDD/MY_STUFF/VIDEOS/ && c'

alias mullvad='(cd /mnt/HDD/MY_STUFF/TECH/Apps/mullvad-browser/ && ./start-mullvad-browser.desktop && c)'
alias webdev='cd /mnt/HDD/MY_STUFF/TECH/WebDev && c'
alias awebdev='(xargs brave < /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Scripts/a.webdev.txt && c)'
alias abrave='(xargs brave < /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Scripts/a.URLs.txt &>/dev/null && c)'
alias nsfw='(nv /mnt/HDD/MY_STUFF/MISC/Notes/NSFW.txt)'

######                 ######
######   RARELY USED   ######
######                 ######
alias gpu='nvidia-smi --query-gpu=name --format=csv,noheader'
alias kernel='uname -r'
alias umount='sudo umount -l'
alias ntfs='sudo mount -t ntfs'

# List files and FOLDERS by size
alias sizea='clear && df -h .; echo "."; sudo du -h --max-depth=1 | sort -hr'

# List files by size, ignores folders
alias sizeb='clear && ls --color=auto -ASsh && exec bash' 

alias uiso='sudo umount -l /mnt/ISO'

iso() {
  sudo mount -o loop "$1" /mnt/ISO
  cp -r /mnt/ISO "/mnt/STORAGE/MY STUFF/GAMES/_Others/ISO_Temp"
  uiso
}
