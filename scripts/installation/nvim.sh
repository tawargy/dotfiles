#!/bin/bash

url=https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz

output_dir="$HOME/Downloads"

curl -L "$url" -o "$output_dir/nvim-linux64.tar.gz"


TAR_FILE=~/Downloads/nvim-linux64.tar.gz


DEST_DIR=/opt
sudo tar -xzf $TAR_FILE -C $DEST_DIR

if [ -f "/usr/share/applications/nvim.desktop" ]; then
  sudo rm /usr/share/applications/nvim.desktop
fi


if [ -f "/usr/bin/nvim" ]; then
  sudo rm /usr/bin/nvim
fi

sudo cp /opt/nvim-linux64/share/applications/nvim.desktop /usr/share/applications/nvim.desktop

sudo ln -s /opt/nvim-linux64/bin/nvim /usr/bin/nvim

  





