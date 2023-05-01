#! /bin/bash

RD_BIN=~/.rd/bin

if [ -d "$RD_BIN" ]; then
  export PATH="$RD_BIN:$PATH"
fi

