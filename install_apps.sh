#!/bin/bash

echo "Installing apps..."
sudo apt-get install vim
sudo apt-get install ack-grep

sudo apt-get install i3 i3status i3lock
sudo apt-get install conky

sudo apt-get install smplayer
sudo apt-get install gpicview
sudo apt-get install ranger caca-utils highlight atool poppler-utils mediainfo

# For screen lock
sudo apt-get install i3lock scrot imagemagick

read -p "Install python3? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo apt-get install python3
    sudo apt-get install python3-dev
fi

read -p "Install powerline fonts? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git clone https://github.com/powerline/fonts.git /tmp/fonts
    /tmp/fonts/install.sh
fi
