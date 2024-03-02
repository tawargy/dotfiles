#!/bin/bash

str=`setxkbmap -query | grep layout | tr -s ' ' | cut -d ' ' -f2`

if [[ $str = "us" ]]
 then
  setxkbmap ar
 elif [[ $str = "ar" ]]
 then
   setxkbmap us
 else 
   return
 fi







