#! /bin/bash

# Put any settings specific to macOS here.

# Prevent Apple from nagging about zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

###############################################################################
# Custom Command Aliases that are macOS specific
###############################################################################
alias ll='ls -lahG'


###############################################################################
# macOS Path Additions
###############################################################################

# Add VSCode to the path (if available)
if [ -d "/Applications/Visual Studio Code.app/" ]; then
  export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
elif [ -d "/Applications/Visual Studio Code - Insiders.app/" ]; then
  export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"
fi 