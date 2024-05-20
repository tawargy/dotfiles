#!/bin/bash

icon="🎁"

update=$(apt-get -q -y --ignore-hold --allow-change-held-packages --allow-unauthenticated -s dist-upgrade | /bin/grep  ^Inst | wc -l)

if [ "$update" -gt 0 ]; then
  dunstify "System Update" "${icon} ${update} packages." -u normal -r 999
else
  dunstify "System Update" "${icon} No updates." -u normal -r 999

fi
