#/bin/bash

source ./get_mouseID.sh

xinput set-prop $id "libinput Scroll Method Enabled" 0, 0, 1 && xinput set-prop $id "libinput Button Scrolling Button" 3
