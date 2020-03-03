#!/bin/bash

TNN_DIR=$HOME/.terminal-notes/notes
NUMBER=1


# show all notes and their filename
for f in $TNN_DIR/*
do
  echo ""
  echo "-----"
  echo "| $NUMBER |"
  echo "-----"
  cat $f
  echo ""
  ((NUMBER++))
done

echo ""
echo ""
