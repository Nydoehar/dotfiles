### MY ALIASES

alias c='clear && ls --color=auto -Ash && exec bash'
alias ca='clear && ls --color=auto -Ssh && exec bash'
alias a='cd .. && c'
alias e='exit'

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

alias update='sudo timeshift-gtk && sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove && sudo apt autoclean'
alias search='sudo apt search'
alias install='sudo apt install '
alias purge='sudo apt purge '

alias off='sudo shutdown now'
alias restart='sudo shutdown -r now'
alias suspend='systemctl suspend'

nv() {
	nvim "$1" && c 
}

alias dv='nv ~/.config/nvim/init.lua && c' 
alias dh='nv ~/.bash_history && c' 
alias da='nv ~/.bash_aliases && c' 
alias dr='nv ~/.bashrc' 

  # FOLDERS
alias home='cd ~/ && c'
alias stuff='cd /mnt/HDD-1/MY_STUFF/ && c'

alias books='cd /mnt/HDD-1/MY_STUFF/BOOKS/ && c'
alias comics='cd /mnt/HDD-1/MY_STUFF/BOOKS/Comics && c'
alias ebooks='cd /mnt/HDD-1/MY_STUFF/BOOKS/Ebooks && c'
alias mangas='cd /mnt/HDD-1/MY_STUFF/BOOKS/Mangas && c'

alias games='cd /mnt/HDD-1/MY_STUFF/GAMES/ && c'
alias gamesa='cd /mnt/HDD-1/MY_STUFF/GAMES/ISOs/ && c'
alias gamesb='cd /mnt/NVME-1/GAMES/My_Games/ && c'

alias misc='cd /mnt/HDD-1/MY_STUFF/MISC/ && c'
alias notes='cd /mnt/HDD-1/MY_STUFF/MISC/Vim && c'
alias cheats='cd /mnt/HDD-1/MY_STUFF/MISC/Vim/Cheat_Sheets && c'
alias nsfw='nv /mnt/HDD-1/MY_STUFF/MISC/Vim/NSFW.txt && c'

alias pc='cd /mnt/HDD-1/MY_STUFF/PC/ && c'
alias apps='cd /mnt/HDD-1/MY_STUFF/PC/Softwares/ && c'

alias videos='cd /mnt/HDD-1/MY_STUFF/VIDEOS/ && c'
alias animes='cd /mnt/HDD-1/MY_STUFF/VIDEOS/Animes/ && c'
alias movies='cd /mnt/HDD-1/MY_STUFF/VIDEOS/Movies/ && c'
alias shows='cd /mnt/HDD-1/MY_STUFF/VIDEOS/TV_Shows/ && c'
alias porn='cd /mnt/HDD-1/MY_STUFF/VIDEOS/Porn/ && c'

alias sonic='cd /mnt/NVME-1/ && c'

alias scripts='cd /mnt/HDD-1/MY_STUFF/PC/Bash/Scripts && c'
alias watch='(cd /mnt/HDD-1/MY_STUFF/VIDEOS/Animes/Jujutsu_Kaisen && play E886DF78) && (cd "/mnt/HDD-1/MY_STUFF/VIDEOS/Animes/Boku_no_Hero_Academia/My Hero Academia Season 5 (1080p CR Dual Audio WEB-DL -KS-)" && play S05E10) && (cd /mnt/HDD-1/MY_STUFF/VIDEOS/Animes/\[Judas\]\ Haikyuu\!\!\ \(Seasons\ 1-2\ +\ OADs\)\ \[BD\ 1080p\]\[HEVC\ x265\ 10bit\]\[Dual-Audio\]\[Eng-Subs\]/\[Judas\]\ Haikyuu\!\!\ -\ S1/ && play 06) && c'

alias upwork='cd /mnt/HDD-1/MY_STUFF/MISC/Vim/Upwork && c'
alias back='(cd /mnt/HDD-1/MY_STUFF/PC/Dot_Files && rm -rf transmission Brave-Browser && cp -r ~/.config/transmission ~/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser .)'
alias settings='gnome-control-center'
alias brave='(xargs flatpak run com.brave.Browser < /mnt/HDD-1/MY_STUFF/PC/Bash/Scripts/URLs.txt &>/dev/null && c)'
alias mullvad='(cd /mnt/HDD-1/MY_STUFF/PC/Softwares/mullvad-browser/ && ./start-mullvad-browser.desktop)'
alias send='(cd /mnt/HDD-1/MY_STUFF/PC/Softwares/ && ./LocalSend-1.10.0-linux-x86-64.AppImage)'
alias sync='(cd /mnt/HDD-1/MY_STUFF/PC/Softwares/syncthing-linux-amd64-v1.23.6 && ./syncthing)'
alias freenet='(cd /mnt/HDD-1/MY_STUFF/PC/Dark_Nets/Freenet && ./run.sh start)'

### RARELY USED 
alias gpu='nvidia-smi --query-gpu=name --format=csv,noheader'
alias kernel='uname -r'
alias umount='sudo umount -l'
alias ntfs='sudo mount -t ntfs'

# List files by size, ignores folders
alias sizea='clear && ls --color=auto -ASsh && exec bash' 

# List files and FOLDERS by size
alias sizeb='clear && df -h .; echo "."; sudo du -h --max-depth=1 | sort -hr'

alias uiso='sudo umount -l /mnt/ISO'

iso() {
  sudo mount -o loop "$1" /mnt/ISO
  cp -r /mnt/ISO "/mnt/STORAGE/MY STUFF/GAMES/_Others/ISO_Temp"
  uiso
}

# DISTROBOX
alias arch='distrobox-enter --name distro_arch'
alias boxupd='distrobox-upgrade --all'
