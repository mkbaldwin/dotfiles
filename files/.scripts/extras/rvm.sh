#! /bin/bash

###############################################################################
# Install rvm and make it available on the path
###############################################################################

RVM_DIR="$HOME/.rvm"
if [ -d "$RVM_DIR" ]; then
  # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
  export PATH="$PATH:$RVM_DIR/bin"
  source ~/.rvm/scripts/rvm
else
  unset RVM_DIR
fi
