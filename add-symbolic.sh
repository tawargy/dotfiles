#!/bin/bash 

############## create symbolic link ###########

ln -s ~/dotfiles/.npmrc ~/.npmrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/config/* ~/.config

# ln -s ~/dotfiles/config/nvim ~/.config
# ln -s ~/dotfiles/config/mpv ~/.config
# ln -s ~/dotfiles/config/alacritty ~/.config
# ln -s ~/dotfiles/config/kitty ~/.config
# ln -s ~/dotfiles/config/rofi ~/.config
# ln -s ~/dotfiles/config/dunst ~/.config
# ln -s ~/dotfiles/config/sxhkd ~/.config
# ln -s ~/dotfiles/config/zathura ~/.config
# ln -s ~/dotfiles/config/tmux ~/.config
# ln -s ~/dotfiles/config/ranger ~/.config
# ln -s ~/dotfiles/config/htop ~/.config

ln -s ~/dotfiles/scripts/bin/* ~/bin

sudo rm /etc/doas.conf
sudo cp ~/dotfiles/doas.conf /etc/doas.conf


