#! /bin/bash

###############################################################################
# Look to see if vasm is located in an expected location and add to path
#
# vasm is an assembler that is compatible with the 6502 and other older CPUs
#    http://sun.hasenbraten.de/vasm
###############################################################################
VASM_DIR=/opt/vasm
if [[ "$OSTYPE" == "darwin"* ]]; then
    VASM_DIR=~/dev-tools/vasm
fi

if [ -d "$VASM_DIR" ]; then
    export PATH="$VASM_DIR:$PATH"
    alias vasm="$VASM_DIR/vasm6502_oldstyle"
else
    unset VASM_DIR
fi
