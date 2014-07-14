#!/bin/bash
[[ "$1" = "" ]] && SERVERPORT=4321 || SERVERPORT=$1
while [ 1 ]; do
	osascript itunescurrent.scpt | nc -l $SERVERPORT
done
exit 0
