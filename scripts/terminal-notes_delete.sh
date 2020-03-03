#!/bin/bash

TNN_DIR=$HOME/.terminal-notes/notes
NUMBER=1


# delete specified note
for f in $TNN_DIR/*
do
  if [ "$1" = "$NUMBER" ]
  then
    echo "Deleted note $NUMBER - $(cat $f)"
    rm -rf $f
  fi
  ((NUMBER++))
done
