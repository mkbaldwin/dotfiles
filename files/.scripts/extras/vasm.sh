#! /bin/bash

###############################################################################
# Look to see if vasm is located in an expected location and add to path
###############################################################################
VASM_DIR=/opt/vasm

if [ -d "$VASM_DIR" ]; then
    export PATH="$VASM_DIR:$PATH"
else
    unset VASM_DIR
fi
