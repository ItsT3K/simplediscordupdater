#!/bin/sh

# Discord Auto Updater
# for Debian Linux, Ubuntu Linux, and all other distributions
# that use the .deb package format
#
# Licensed under GNU GPL v3 licensing
# https://github.com/itst3k
# https://gitlab.com/itst3k
# Written by ItsT3K

# Check to make sure that wget is installed
url="https://discord.com/api/download?platform=linux&format=deb"
if ! which curl > /dev/null
then
    echo "curl has not been found. installing"
    sudo apt install -y curl
else
    echo "======== Downloading Discord ========"
    mkdir temp
    cd temp
    curl --silent -L -o discord.deb $url
    echo "======== Installing Discord ========"
    sudo dpkg -i discord.deb
    cd ..
    rm -rf temp # delete the temp dir
    echo "======== Discord is installed ========" 
fi
