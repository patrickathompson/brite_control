#!/bin/bash
declare -i getbrite
getbrite=`pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --get-brightness`
#echo $getbrite
if [ $getbrite -lt 7 ]; then
    let "getbrite += 1"
    pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness $getbrite
    #echo $getbrite
fi
