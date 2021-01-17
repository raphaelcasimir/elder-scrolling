#!/usr/bin/env bash
id=$(xinput list | grep -i "Logitech MX Ergo" | head -n1 | cut -d'=' -f2 | cut -f1)

printf "$id"
