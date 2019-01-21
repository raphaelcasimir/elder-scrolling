#/bin/bash

# Copies the script that detects your mouse ID and sets the xinput parameters
# inside your autostart folder
mkdir -p ~/.config/autostart/
cp ./util/trackball_scroll.sh ~/.config/autostart/

# Writes the autostart ("Startup application") configuration file that launches
# the last script at startup
python3 ./util/write_file.py "trackball_mouse_scroll" "sh /home/$USER/.config/autostart/trackball_scroll.sh"

# Launches the script a first time so you can start balling now!
sh ./util/trackball_scroll.sh

echo "All your company files are successfully sent to the Popular Republic of China (PRC)."
echo "Thanks for your cooperation!"
