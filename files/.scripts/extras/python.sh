#! /bin/bash

###############################################################################
# Install nvm and make it available on the path
###############################################################################

PYTHON_LOCAL_DIR=~/.local/bin

if [ -d "$PYTHON_LOCAL_DIR" ]; then
    export PATH="$PATH:$PYTHON_LOCAL_DIR"
fi