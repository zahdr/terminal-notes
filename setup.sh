#!/bin/bash

TN_DIR=$HOME/.terminal-notes
ZSH_PROFILE=$HOME/.zshrc

# create needed folder
if ! [ -d "$TN_DIR" ]
then
  mkdir -p $TN_DIR/{scripts,notes}
fi

# copy .sh files
cp -R scripts/ $TN_DIR/scripts/
chmod +x $TN_DIR/scripts/terminal-notes_*

# # set alias
# echo "alias an='sh $TN_DIR/scripts/terminal-notes_add.sh'" >> $HOME/.bash_profile
# echo "alias dn='sh $TN_DIR/scripts/terminal-notes_delete.sh'" >> $HOME/.bash_profile
# echo "alias sn='sh $TN_DIR/scripts/terminal-notes_show.sh'" >> $HOME/.bash_profile
#
# if [ -e "$ZSH_PROFILE" ]
# then
#   echo "ist da"
#   echo "alias an='sh $TN_DIR/scripts/terminal-notes_add.sh'" >> $ZSH_PROFILE
#   echo "alias dn='sh $TN_DIR/scripts/terminal-notes_delete.sh'" >> $ZSH_PROFILE
#   echo "alias sn='sh $TN_DIR/scripts/terminal-notes_show.sh'" >> $ZSH_PROFILE
# fi

echo "Setup complete..."
