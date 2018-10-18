#!/bin/bash

message="No message provided"
title="Title"


while [[ $# > 1 ]]
do
key="$1"

case $key in
    -m|--message)
    message="$2"
    shift # past argument
    ;;
    -h|--head|--title)
    title="$2"
    shift # past argument
    ;;
    -S|--sound)
    sound="$2"
    shift # past argument
    ;;
    -s|--subtitle|--subhead)
    sybtitle="$2"
    shift
    ;;
    --default)
    DEFAULT=YES
    ;;
    *)
      # unknown option
    ;;
esac
shift # past argument or value
done


cmd="display notification \"$message\" with title \"$title\""

/usr/bin/osascript -e "$cmd"

