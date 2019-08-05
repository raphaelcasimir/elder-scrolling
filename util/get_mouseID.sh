#!/usr/bin/env bash
id=$(xinput list --name-only | grep -i "MX Ergo Mouse");

printf "$id"
