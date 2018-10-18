#!/bin/bash

PATH=""

docs="/Library/WebServer/Documents"
cwd=$(pwd)

if [ -e $docs ];
then
  if [[ -L "$docs" && -d "$docs" ]]
  then
    /usr/bin/sudo /bin/rm $docs
  else
    echo "'$docs' is not a symlink to a directory"
    exit
  fi
fi

/usr/bin/sudo /bin/ln -s $cwd $docs

