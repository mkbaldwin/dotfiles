#! /bin/bash

###############################################################################
# Install sdkman and make it available on the path
###############################################################################

if uname -a | grep -qEi "(Microsoft|WSL)" &> /dev/null; then
  # This is a workaround for WSL where you have the Windows and Linux home dirs being in different places
  # and the usernames can also be different... would be better if I setup things to be more consistent
  # between the two, but I don't want to take the time to fix it right now.
  USR=$(whoami)
  USR_HOME=$(find /mnt/c/Users -maxdepth 1 -type d -printf '%f\n' | grep -i "$USR")
  SDKMAN_DIR="/mnt/c/Users/$USR_HOME/.sdkman" 
else
  SDKMAN_DIR="$HOME/.sdkman"
fi

if [ -d "$SDKMAN_DIR" ]; then
  export SDKMAN_DIR
  [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
else
  unset SDKMAN_DIR
fi