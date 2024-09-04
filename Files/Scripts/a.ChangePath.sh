#!/bin/bash

#old_path='/mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Scripts'
old_path='Bash'
new_path='bash'

sed -i 's/'"$old_path"'/'"$new_path"'/g' ~/.local/bin/*
sed -i 's/'"$old_path"'/'"$new_path"'/g' ~/.bash_aliases 
sed -i 's/'"$old_path"'/'"$new_path"'/g' /mnt/HDD/MY_STUFF/TECH/ConfigFiles/Files/Scripts/Wrappers/*
