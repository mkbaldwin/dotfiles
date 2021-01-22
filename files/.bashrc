
###############################################################################
# Custom Command Aliases
###############################################################################
alias ll="ls -lahG"

###############################################################################
# Determine the platform we are on and source platform specific settings
###############################################################################
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  LINUX_FILE=~/.scripts/linux.sh
  if [ -f "$LINUX_FILE" ]; then
    source "$LINUX_FILE"
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  DARWIN_FILE=~/.scripts/darwin.sh
  if [ -f "$DARWIN_FILE" ]; then
    source "$DARWIN_FILE"
  fi
fi

###############################################################################
# Install and make nvm available
###############################################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
