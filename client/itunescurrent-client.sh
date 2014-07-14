#!/bin/bash
# Copyright (c) 2011-2014 BSD-type License, see License.txt
[[ "$1" = "" ]] && SERVERIP=192.168.1.108 || SERVERIP=$1
[[ "$2" = "" ]] && SERVERPORT=4321 || SERVERPORT=$2
CURRENTTRACK=""
ITUNESINFO=""
while [ 1 ]; do
	ITUNESINFO=`nc $SERVERIP $SERVERPORT`
	#echo "$ITUNESINFO :::: $CURRENTTACK"
	if [ "$ITUNESINFO" != "$CURRENTTRACK" ] ; then
		clear
		CURRENTTRACK=$ITUNESINFO
    echo "iTunes currently playing:"
		echo $CURRENTTRACK
	fi
	sleep 5
done
exit 0

