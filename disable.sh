#!/usr/bin/env bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
source ${DIR}/util/get_mouseID.sh
echo " elder scroll disabled."
xinput set-prop "$id" "libinput Scroll Method Enabled" 0, 0, 0
