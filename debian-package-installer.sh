#!/bin/bash
clear
echo "Welcome to debian package installer!"
echo "========================="
echo "This program installs debian packages for Distros that have no app for it."
echo -e "\e[32mEnter your user password when asked.\e[0m"
echo "========================="
echo -n "Enter the path for the debian package (or drag and drop the file): "
read path

path="${path/#\~/$HOME}"

if [ ! -f "$path" ]; then
    echo -e "\e[31mError: File '$path' not found.\e[0m"
    exit 1
fi

sudo dpkg -i "$path"
sudo apt-get install -f
