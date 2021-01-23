#! /bin/bash

###############################################################################
# Install powerline as our prompt if it is installed and available
###############################################################################

# Configure powerline shell as our prompt if it exists.
# TODO: Make this work on macOS
if [[ -f /usr/local/bin/powerline-shell ]]; then
    function _update_ps1() {
                PS1=$(powerline-shell $?)
        }

    if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
                PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
    fi
fi