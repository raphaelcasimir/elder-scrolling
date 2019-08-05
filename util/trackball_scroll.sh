#!/usr/bin/env bash
DIR="$( cd "$( dirname "$0" )" && pwd )"

function getID(){
	id=$(. ${DIR}/util/get_mouseID.sh 2> /dev/null)
	if [ -z "$id" ]
		then
		id=$(. ${DIR}/get_mouseID.sh 2> /dev/null)
	fi
	if [ -z "$id" ]
		then
		id=$(. /home/sagan/.config/autostart/get_mouseID.sh 2> /dev/null) # U S R here
	fi
	printf "$id"
}

long=0
until [ "$res" == "" ] && [ $long -gt 0 ]; do
	if [ $long -lt 120 ]
	then
		sleep 1
		long=$((long+1))
	else
		sleep 20
	fi

	res="$(xinput set-prop "$(getID)" "libinput Scroll Method Enabled" 0, 0, 1 2>&1)"
	xinput set-prop "$(getID)" "libinput Button Scrolling Button" 3
	echo "Device: $(getID)."
done

