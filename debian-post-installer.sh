#!/bin/bash

sudo apt update && sudo apt upgread -y
echo "System updated"

# install app fro repo

# utils (dwm)
sudo apt install libxft-dev libx11-dev libxinerama-dev -y
# tools
sudo apt install kitty exa doas vim keepassxc -y
echo "tools installed"

# media
sudo apt install mpv vls gaupol audacious zathura sxiv scrot handbrake -y
echo "media installed"

# file manger
sudo apt install pcmanfm ranger rofi lxappearance

#internet
sudo apt install w3m skype zoom filezilla



