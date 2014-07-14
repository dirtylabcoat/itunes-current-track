#!/bin/bash
[[ "$1" = "" ]] && SERVERIP=192.168.1.108 || SERVERIP=$1
[[ "$2" = "" ]] && SERVERPORT=4321 || SERVERPORT=$2
nc $SERVERIP $SERVERPORT
exit 0

