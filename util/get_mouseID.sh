#!/usr/bin/env bash
id=$(xinput list --name-only | grep -i "minic");

printf "$id"
