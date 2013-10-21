#!/bin/bash
SERVERPORT=4321
while [ 1 ]; do
	osascript itunescurrent.scpt | nc -l $SERVERPORT
done
exit 0
