#! /bin/bash

###############################################################################
# Look to see if cc65 is located in an expected location and add to path
#
# cc65 is a C compiler for 6502 microprocessors. 
#    https://cc65.github.io/
###############################################################################
CC65_DIR=/opt/cc65
if [[ "$OSTYPE" == "darwin"* ]]; then
    CC65_DIR=~/dev-tools/cc65/bin
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  CC65_DIR=~/opt/cc65/bin
fi



if [ -d "$CC65_DIR" ]; then
    export PATH="$CC65_DIR:$PATH"
else
    unset CC65_DIR
fi
