#!/bin/bash


if [ -z "$1" ]
then
  initial=2
else
  initial=$1
fi

if [ -z "$2" ]
then
  delay=0.2
else
  delay=$2
fi

sleep $initial

brightness 1
sleep $delay
brightness 0.1
sleep $delay
brightness 1
sleep $delay
brightness 0.1
sleep $delay
brightness 1
sleep $delay
brightness 0.1
sleep $delay
brightness 1
sleep $delay
brightness 0.1
sleep $delay
brightness 1
sleep $delay
brightness 0.1
sleep $delay
brightness 1
sleep $delay
brightness 0.1
sleep $delay
brightness 1
