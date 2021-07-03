#! /bin/bash

###############################################################################
# Look to see if Java is located in an expected location and add to path
###############################################################################
JAVA_HOME=~/dev-tools/java

if [ -d "$JAVA_HOME" ]; then
    export JAVA_HOME
    export PATH="$JAVA_HOME/bin:$PATH"
else
    unset JAVA_HOME
fi
