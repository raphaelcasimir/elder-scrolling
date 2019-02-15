#/bin/bash

id=$(xinput list | awk \
'BEGIN { \
	FS="[=\[]";
	act=1; \
} \
/M570/ { \
	if (act == 1) { \
		print $2; \
		act=0; \
			} \
		}' \
| grep -o '[0-9]\+')

xinput set-prop $id "libinput Scroll Method Enabled" 0, 0, 1 