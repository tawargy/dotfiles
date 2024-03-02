
#setxkbmap -layout us,ara -variant ,digits -option grp:alt_shift_toggle caps:escape  
setxkbmap -layout us,ara -variant ,digits -option grp:lalt_lshift_toggle caps:escape 
xmodmap -e 'keycode 94 = Control_R NoSymbol Control_R'
