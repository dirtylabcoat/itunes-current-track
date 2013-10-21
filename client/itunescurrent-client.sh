#!/bin/bash
SERVERIP=192.168.1.103
if [ $# -eq 1 ] ; then
	SERVERIP=$1
fi
SERVERPORT=4321
CURRENTTRACK=""
ITUNESINFO=""
while [ 1 ]; do
	ITUNESINFO=`nc $SERVERIP $SERVERPORT`
	#echo "$ITUNESINFO :::: $CURRENTTACK"
	if [ "$ITUNESINFO" != "$CURRENTTRACK" ] ; then
		clear
		CURRENTTRACK=$ITUNESINFO
		echo $CURRENTTRACK
	fi
	sleep 5
done
exit 0

