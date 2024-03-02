#!/bin/sh


full="^c#ffd766^ "
discharging="^c#d2b1ea^  "
charging="^c#59c9b0^  " 
nocharging="^c#ff1a55^  " 
unknown="^c#ffd766^  " 
up="^c#FF6E12^   "
down="^c#ff1a55^  "

# full=""
# discharging=" "
# charging=" " 
# nocharging=" " 
# unknown=" " 
# up="  "
# down=" "

for battery in /sys/class/power_supply/BAT1*; do
  # If non-first battery, print a space separator.
  [ -n "${capacity+x}" ] && printf " "
  # Sets up the status and capacity
  case "$(cat "$battery/status" 2>&1)" in
    "Full") status=$full ;;
    "Discharging") status=$discharging ;;
    "Charging") status=$charging ;;
    "Not charging") status=$nocharging ;;
    "Unknown") status=$unknown ;;
    *) exit 1 ;;
  esac
   

   capacity="$(cat "$battery/capacity" 2>&1)" 
  # Will make a warn variable if up to 80% and 25% low
  if [ "$status" = "$discharging" ] && [ $capacity -lt 26 ]
  then 
    status=$down
  fi  

 if [ "$status" = "$charging" ] && [ $capacity -gt 79 ]
  then 
    status=$up
  fi 

 if [ "$status" = "$discharging" ] && [ $capacity -lt 11 ]
  then 
    doas poweroff
  fi

  # Prints the info
  printf "%s%d%%" "$status" "$capacity";  
done && printf "\\n"



