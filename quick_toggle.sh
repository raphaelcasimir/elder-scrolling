#!/usr/bin/env bash

until [[ ! -z $id ]]; do
	read -p "Enter mouse name to grep: " uname
	id=$(xinput list --name-only | grep -i $uname)
	if [ -z "$id" ]; then echo "	No $uname device found. Try again."; fi
done

echo "	Selected $id."

# Check in what state the device is (es enabled or not)
ena=$(xinput --list-props "$id" | grep "libinput Scroll Method Enabled (" | cut -d, -f 3)

if [ $ena -eq 0 ]
then
	xinput set-prop "$id" "libinput Scroll Method Enabled" 0, 0, 1
	xinput set-prop "$id" "libinput Button Scrolling Button" 3
	echo "	Enabled for $id."
else
	xinput set-prop "$id" "libinput Scroll Method Enabled" 0, 0, 0
	echo "	Disabled for $id."
fi
