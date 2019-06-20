#!/usr/bin/env bash

until [[ ! -z $dname ]]; do
	read -p "Enter mouse name to grep: " uname
	dname=$(xinput list --name-only | grep -i $uname)
	if [ -z "$dname" ]; then echo "	No $uname device found. Try again."; fi
done

echo "	Selected $dname."

read -p "Enable or disable (e/d)?: " enable
if [ $enable == "e" ]
then
	xinput set-prop "$dname" "libinput Scroll Method Enabled" 0, 0, 1 && xinput set-prop "$dname" "libinput Button Scrolling Button" 3
	echo "	Elder scroll enabled."
else
	xinput set-prop "$dname" "libinput Scroll Method Enabled" 0, 0, 0
	echo "	Elder scroll disabled."
fi
