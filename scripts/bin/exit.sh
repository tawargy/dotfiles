 
#!/bin/bash

choice=$(printf "%s\n%s\n%s" "Shutdown" "Reboot" "Logout" | dmenu -i -p "Choose action: ")
[ $choice = "Shutdown" ] && doas poweroff
[ $choice = "Reboot"   ] && doas reboot
[ $choice = "Logout"   ] && pkill dwm
[ $choice = "Lock"     ] && slock



# function powermenu {
#   options="Shutdown\nRestart\nLogout\nSleep\nLock"
#   selected=$(echo  $options | dmenu)
#   if [[ $selected = "Shutdown" ]]; then
#       doas poweroff
#   elif [[ $selected = "Restart" ]]; then
#       doas reboot 
#   elif [[ $selected = "Logout" ]]; then
#       pkill dwm
#   elif [[ $selected = "Sleep" ]]; then
#       doas systemctl suspend
#   elif [[ $selected = "Lock" ]]; then
#       slock
#   fi    

# }
# powermenu
