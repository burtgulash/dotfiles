#!/bin/bash

echo "Installing apps..."
sudo apt-get install vim
sudo apt-get install ack-grep

sudo apt-get install smplayer

read -p "Install python3? (y/N)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo apt-get install python3
    sudo apt-get install python3-dev
fi
