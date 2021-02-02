#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)

# List available pointing devices to the user
echo "${bold}Available pointing devices:${normal}"
xinput list --name-only
echo ''

# Ask the user to choose a device
while [ -z $id ]; do
	read -p "Enter mouse name to grep: " uname
	id=$(xinput list | grep -i "$uname" | head -n1 | cut -d'=' -f2 | cut -f1)
	devName=$(xinput list --name-only | grep -i "$uname" | head -n1)
	if [ -z "$id" ]; then echo "	No $uname device found. Try again."; fi
done

echo "	Selected $devName, id=$id."

# Enable it
xinput set-prop "$id" "libinput Scroll Method Enabled" 0, 0, 1
xinput set-prop "$id" "libinput Button Scrolling Button" 3
echo "	Enabled for $devName, id=$id."


# Backup file for easy rollback
cp ./util/get_mouseID.sh ./util/get_mouseID.sh.bak

# Change device name in the file that will be installed by the main script
gawk -i inplace -v name="${devName}" -F \" '/"/{gsub($2,name,$0)};{print};' ./util/get_mouseID.sh
