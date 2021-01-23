#! /bin/bash

###############################################################################
# Install nvm and make it available on the path
###############################################################################

NVM_DIR="$HOME/.nvm"
if [ -d "$NVM_DIR" ]; then
  export NVM_DIR
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
else
  unset NVM_DIR
fi