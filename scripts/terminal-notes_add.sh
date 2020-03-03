#!/bin/bash

function create_filename () {
  HASH=$(hexdump -n 16 -v -e '/1 "%02X"' /dev/urandom)
  HASH_LOWER=$(echo $HASH | tr "[:upper:]" "[:lower:]")
  FILE=$TNN_DIR/$HASH_LOWER
}


TNN_DIR=$HOME/.terminal-notes/notes
CHECK=0


# create note filename
while [ "$CHECK" = 0 ]
do
  create_filename
  while [ -f "$FILE" ]
  do
    create_filename
  done
  CHECK=1
done

# add note
echo $@ > $FILE
