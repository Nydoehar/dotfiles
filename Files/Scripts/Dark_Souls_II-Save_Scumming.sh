#!/bin/bash

cd "/mnt/LINUX_STORAGE/Lutris/dark-souls-ii/drive_c/users/yann/AppData/Roaming/DarkSoulsII/0110000100001337/" 
var="$1"
cp DARKSII0000.sl2 BACKUP/ 
cd BACKUP 
mv DARKSII0000.sl2 "$1"-DARKSII0000.sl2
