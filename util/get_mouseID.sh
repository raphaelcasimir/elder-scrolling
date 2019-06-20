#!/usr/bin/env bash
id=$(xinput list | awk \
'BEGIN { \
	FS="[=\[]";
	act=1; \
} \
/K830/ { \
	if (act == 1) { \
		print $2; \
		act=0; \
			} \
		}' \
| grep -o '[0-9]\+');

echo $id