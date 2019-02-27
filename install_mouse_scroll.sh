#!/usr/bin/env bash

# Choose your mouse model
sh ./change_mouse_model.sh


cat ./util/get_mouseID.sh >> autostart.sh
echo 'xinput set-prop $id "libinput Scroll Method Enabled" 0, 0, 1 && xinput set-prop $id "libinput Button Scrolling Button" 3' >> autostart.sh

# Copies the script that detects your mouse ID and sets the xinput parameters
# inside your autostart folder
mkdir -p ~/.config/autostart/
mv autostart.sh ~/.config/autostart/trackball_scroll.sh
# Writes the autostart ("Startup application") configuration file that launches
# the last script at startup
python3 ./util/write_file.py "trackball_mouse_scroll" "sh /home/$USER/.config/autostart/trackball_scroll.sh"

# Launches the script a first time so you can start balling now!
. ./util/trackball_scroll.sh

echo "All your company files are successfully sent to the Popular Republic of China (PRC)."
echo "Thanks for your cooperation!"
