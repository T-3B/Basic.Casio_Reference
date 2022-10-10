#!/bin/bash

mkdir ./basicCasioCommands

while read -r line; do
	if [ "${line::3}" = '$$$' ]
    then
		name="basicCasioCommands/${line:4}.txt"
		echo "$line" >"$name"
	else
		[ -n "$name" ] && echo "$line" >>"$name"
    fi
done <Casio.txt
