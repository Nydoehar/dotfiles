#!/bin/bash

# Set the search pattern based on command-line argument
pattern="$1"

# Find files matching the pattern in the current directory
findy=$(find . -maxdepth 1 -iname "*$pattern*")

# Display found files
echo -e "\n$findy" | nl

# Ask for confirmation to remove files
echo
read -p 'Remove? [y/N]: ' -n 1 -r

echo

# Process the user's response
if [ "$REPLY" = y ]; then
    # Use a while loop to delete each file
    echo "$findy" | while IFS= read -r file; do
        echo -e "\nDeleting: $file\n"
        rm -rf "$file"
    done
fi

#sleep 2

# Clear the screen and list the remaining files
clear && ls --color=auto -Ash --group-directories-first && exec bash
