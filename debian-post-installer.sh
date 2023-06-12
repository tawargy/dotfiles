#!/bin/bash

sudo echo "
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

deb http://security.debian.org/debian-security/ bullseye-security main contrib non-free
deb-src http://security.debian.org/debian-security/ bullseye-security main contrib non-free
"  > /etc/apt/sources.list

echo "*************************** update non-free ***********************"


sudo apt update && sudo apt upgrade -y 
echo "**************************** System updated ***********************"

# install app fro repo

# utils (dwm)
sudo apt install libxft-dev libx11-dev libxinerama-dev -y
# tools
sudo apt install kitty exa doas vim keepassxc -y
echo "***************************** tools installed ********************"

# media
sudo apt install mpv gaupol audacious xwallpaper zathura sxiv scrot handbrake -y
echo "***************************** media installed ********************"

# file manger
sudo apt install pcmanfm ranger rofi lxappearance dunst libnotify-bin -y

#internet
sudo apt install w3m filezilla transmission -y

# Flatpak
sudo apt install flatpak
flatpak install flathub net.ankiweb.Anki
echo "***************************** Finsh install **********************"

sudo echo "[Desktop Entry]
Encoding=UTF-8
Name=DWM
Comment=Dynamic Window Manager
Exec=/usr/local/bin/dwm
Icon=
Type=Application" > /usr/share/xsessions/DWM.desktop

echo "*************************** Make DWM Entry **********************"

suckless-url="https://github.com/tawargy/suckless-tawargy.git"
mkdir -p ~/suckless-tawargy   
git clone $suckless-url ~/suckless-tawargy

dotfiles-url="https://github.com/tawargy/dotfiles.git"
mkdir -p ~/dotfiles 
git clone $dotfiles ~/dotfiles

scripts-url="https://github.com/tawargy/scripts.git"
mkdir -p ~/scripts   
git clone $scripts-url ~/scripts


echo "********************* clones suckless & dotfiles****************"
mkdir -p ~/.dwm
echo "#!/bin/bash
xwallpaper --zoom  ~/wallpaper/pinkfloyd.jpg
exec slstatus &
" > ~/.dwm/autostart.sh
echo "********************* DWM autostart****************************"
