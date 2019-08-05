#!/usr/bin/env bash
id=$(. /home/sagan/.config/autostart/get_mouseID.sh 2> /dev/null) # U S R here

# Check in what state the device is (es enabled or not)
ena=$(xinput --list-props "$id" | grep "libinput Scroll Method Enabled (" | cut -d, -f 3)

if [ $ena -eq 0 ]
then
	xinput set-prop "$id" "libinput Scroll Method Enabled" 0, 0, 1
	xinput set-prop "$id" "libinput Button Scrolling Button" 3
else
	xinput set-prop "$id" "libinput Scroll Method Enabled" 0, 0, 0
fi
