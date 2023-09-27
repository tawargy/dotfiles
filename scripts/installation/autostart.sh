#!/bin/bash

xwallpaper --zoom  ~/wallpaper/pinkfloyd.jpg
~/scripts/dunst/notify-to-dunst.sh &
dunst &
exec slstatus &

