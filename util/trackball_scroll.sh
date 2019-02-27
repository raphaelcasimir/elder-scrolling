#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/util/get_mouseID.sh 2> /dev/null
. ${DIR}/get_mouseID.sh 2>> ~/test.log
. /home/raphael/.config/autostart/get_mouseID.sh 2>> /home/raphael/test.log

xinput set-prop $id "libinput Scroll Method Enabled" 0, 0, 1 && xinput set-prop $id "libinput Button Scrolling Button" 3
