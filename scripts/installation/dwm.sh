#!/bin/bash



sudo echo "[Desktop Entry]
Encoding=UTF-8
Name=DWM
Comment=Dynamic Window Manager
Exec=/usr/local/bin/dwm
Icon=
DesktopNames=DWM
Type=Application" > /usr/share/xsessions/DWM.desktop

echo "*************************** DWM Entry ok **********************"

suckless-url="https://github.com/tawargy/suckless-tawargy.git"
mkdir -p ~/suckless-tawargy   
git clone $suckless-url ~/suckless-tawargy

echo "********************* clones suckless & dotfiles ok ****************"

mkdir -p ~/.dwm
ln -s ~/scripts/install/autostart.sh ~/.dwm 


echo "********************* DWM autostart****************************"
