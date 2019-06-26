#!/usr/bin/env bash

if [ "$EUID" -eq 0 ]
then
	echo "Please do not this run as root"
	exit 0
fi

# Choose your mouse model
sh ./change_mouse_model.sh

# Add username in scripts
gawk -i inplace -v user="${USER}" '/USR/{gsub("USR",user,$0);}{print;}' ./util/trackball_scroll.sh
gawk -i inplace -v user="${USER}" '/USR/{gsub("USR",user,$0);}{print;}' ./util/toggle_es.sh

# Copies the script that detects your mouse ID and sets the xinput parameters
# inside your autostart folder
mkdir -p ~/.config/autostart/
cp ./util/trackball_scroll.sh ~/.config/autostart/trackball_scroll.sh
cp ./util/toggle_es.sh ~/.config/autostart/toggle_es.sh

# Writes the autostart ("Startup application") configuration file that launches
# the last script at startup
python3 ./util/write_file.py "trackball_mouse_scroll" "bash /home/$USER/.config/autostart/trackball_scroll.sh"

#sudo cp ./util/trackball_scroll.sh /usr/lib/pm-utils/sleep.d/99Z_trackball_scroll.sh
cp ./util/get_mouseID.sh ~/.config/autostart/

python3 ./util/add_custom_keyboard_shortcut.py 'Toggle Elder Scrolling' "bash /home/$USER/.config/autostart/toggle_es.sh" '<Alt>e'

# Launches the script a first time so you can start balling now!
./util/trackball_scroll.sh


echo "Thanks for your cooperation!"
