#!/bin/bash
echo
echo
echo  "  █ █▄░█ ▀█▀ █▀▀ █░░ █░░ █ █▀▀ █▀▀ █▄░█ █▀▀ █▀▀ "
echo  "  █ █░▀█ ░█░ ██▄ █▄▄ █▄▄ █ █▄█ ██▄ █░▀█ █▄▄ ██▄ "
echo " ★-----Tools Created By Kevin Deep 【Archangel White】-----★"
echo
# Prompt the user to enter the folder path
echo
read -p "Enter the folder path:" folder
echo
# Check if the folder exists
if [ ! -d "$folder" ]; then
    echo "Folder does not exist!"
    exit 1
fi
echo
# Prompt the user to enter the search term
read -p "Search Phone Number OR Facebook ID: " word

# Iterate over text files in the folder and pass each file to the Python script
echo
for file in "$folder"/*.txt; do
echo
    echo "Parsing $file..."
    echo
    python3 intelligence.py "$file" "$word"
done
