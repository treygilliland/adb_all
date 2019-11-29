#!/bin/bash

# Simple bash functions for controlling multiple devices at once using ADB
# adb_all() is used for controlling multiple devices sequentially
# abd_all_parallel() is used for controlling multiple devices in parallel
# Compiled from https://stackoverflow.com/questions/17882474/running-adb-commands-on-all-connected-devices) for easy access

function adb_all() {
	adb devices | while read line
	do
	    if [ ! "$line" = "" ] && [ `echo $line | awk '{print $2}'` = "device" ]
	    then
	        device=`echo $line | awk '{print $1}'`
	        #echo "$device $@ ..."
	    fi
	done
}

function abd_all_parallel()
{
    adb devices | egrep '\t(device|emulator)' | cut -f 1 | xargs -t -J% -n1 -P5 \
          adb -s % "$@"
}