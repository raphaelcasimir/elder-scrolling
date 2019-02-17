#!/usr/bin/env bash

source ./util/get_mouseID.sh
xinput set-prop $id "libinput Scroll Method Enabled" 0, 0, 0

rm /home/$USER/.config/autostart/trackball_scroll.sh
rm /home/$USER/.config/autostart/trackball_mouse_scroll.desktop

echo "Uninstalled. But China keeps your files and an eye on you."
echo "Merry Christmas and don't forget to order on AliExpress!"
