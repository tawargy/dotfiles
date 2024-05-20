#!/bin/bash

sudo echo "
deb http://deb.debian.org/debian bookworm main non-free-firmware
deb-src http://deb.debian.org/debian bookworm main non-free-firmware

deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware
deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware

deb http://deb.debian.org/debian bookworm-updates main non-free-firmware
deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware
"  > /etc/apt/sources.list

echo "*************************** update non-free-firmware ***********************"


sudo apt update && sudo apt upgrade -y 
echo "**************************** System updated ***********************"

# install app fro repo

# utils (dwm)
sudo apt install libxft-dev libx11-dev libxinerama-dev -y

# tools
sudo apt install kitty exa doas vim keepassxc xautolock git -y
echo "***************************** tools installed ********************"

# media
sudo apt install mpv vlc gaupol audacious xwallpaper zathura sxiv scrot handbrake -y
echo "***************************** media installed ********************"

# file manger
sudo apt install pcmanfm ranger rofi lxappearance dunst libnotify-bin -y

#internet
sudo apt install w3m filezilla transmission chromium -y

# Flatpak
sudo apt install flatpak -y
flatpak install flathub com.github.alainm23.planner
flatpak install flathub net.ankiweb.Anki
flatpak install flathub com.getpostman.Postman
flatpak install flathub rest.insomnia.insomnia
flatpak install flathub md.obsidian.obsidian
flatpak install flathub org.qbittorrent.qbittorrent
flatpak install flathub com.mongodb.Compass
flatpak install flathub io.beekeeperstudio.Studio

# timer
echo 'deb [trusted=yes] https://repo.caarlos0.dev/apt/ /' | sudo tee /etc/apt/sources.list.d/caarlos0.list
sudo apt update
sudo apt install timer

echo "***************************** Finsh install **********************"

# check
dotfiles-url="https://github.com/tawargy/dotfiles.git"
mkdir -p ~/dotfiles 
git clone $dotfiles ~/dotfiles

scripts-url="https://github.com/tawargy/scripts.git"
mkdir -p ~/scripts   
git clone $scripts-url ~/scripts


