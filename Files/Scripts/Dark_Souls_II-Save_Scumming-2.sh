#!/bin/bash

cd "/mnt/LINUX_STORAGE/Lutris/dark-souls-ii/drive_c/users/yann/AppData/Roaming/DarkSoulsII/0110000100001337/"
var="$1"
rm *.sl2
cp BACKUP/"$1"-DARKSII0000.sl2 .
mv "$1"-DARKSII0000.sl2 DARKSII0000.sl2
