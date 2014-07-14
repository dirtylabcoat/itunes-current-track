#!/bin/bash
# Copyright (c) 2011-2014 BSD-type License, see License.txt
[[ "$1" = "" ]] && SERVERPORT=4321 || SERVERPORT=$1
while [ 1 ]; do
	osascript itunescurrent.scpt | nc -l $SERVERPORT
done
exit 0
