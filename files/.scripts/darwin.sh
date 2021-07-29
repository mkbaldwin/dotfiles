#! /bin/bash

# Put any settings specific to macOS here.

# Prevent Apple from nagging about zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

###############################################################################
# Custom Command Aliases that are macOS specific
###############################################################################
alias ll='ls -lahG'
alias unquarantine='xattr -r -d com.apple.quarantine'


###############################################################################
# macOS Path Additions
###############################################################################

# Add VSCode to the path (if available)
if [ -d "/Applications/Visual Studio Code.app/" ]; then
  export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
elif [ -d "/Applications/Visual Studio Code - Insiders.app/" ]; then
  export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"
fi 

# Determine if homebrew is installed and add to the path
HOMEBREW_PREFIX="/opt/homebrew"
if [ -d "$HOMEBREW_PREFIX" ]; then
  export HOMEBREW_PREFIX
  export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
  export HOMEBREW_REPOSITORY="/opt/homebrew"
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}"
  export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:"
  export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"
fi


# Tell Homebrew not to share analytics
export HOMEBREW_NO_ANALYTICS=1