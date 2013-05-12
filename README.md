brite_control
=============

Bash scripts used to control gnome brightness settings. Intended usage is for keymapping to enable hardware brightness 
controls for linux.

Uses:  
    pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --get-brightness  
    pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness [1-10]  

Before implementing, run:  

    pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --get-max-brightness  

to determine the highest value between 1-10 that your machine uses for the maximum brightness setting. Adjust line five
of briteup.sh to match the value given.

    if [ $getbrite -lt 7 ]; then
                       ^
                   replace value
