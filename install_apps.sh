#!/bin/bash

echo "Installing apps..."
sudo apt-get install vim
sudo apt-get install ack-grep

sudo apt-get install smplayer
sudo apt-get install gpicview
sudo apt-get install ranger caca-utils highlight atool poppler-utils mediainfo

read -p "Install python3? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo apt-get install python3
    sudo apt-get install python3-dev
fi
