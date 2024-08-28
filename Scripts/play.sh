#!/bin/bash
  
# Script to play videos
# E.g. - play One e05

video_file=$(find . -type f -iname "*$1*$2*.mp4" -o -iname "*$2*$1*.mp4" -o -iname "*$1*$2*.mkv" -o -iname "*$2*$1*.mkv" | head -n 1)
vlc "$video_file"

clear && ls --color=auto -Ash && exec bash
