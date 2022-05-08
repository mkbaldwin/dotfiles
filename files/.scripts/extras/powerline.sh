#! /bin/bash

###############################################################################
# Install powerline-go as our prompt if it is installed and available
###############################################################################

# Configure powerline shell as our prompt if it exists.
# TODO: Make this work on macOS
if [[ -f /opt/homebrew/bin/powerline-go ]]; then
    function _update_ps1() {
        OPTS="-colorize-hostname -numeric-exit-codes -newline"

        PS1="$(/opt/homebrew/bin/powerline-go -error $? $OPTS -jobs $(jobs -p | wc -l))"

        # Uncomment the following line to automatically clear errors after showing
        # them once. This not only clears the error for powerline-go, but also for
        # everything else you run in that shell. Don't enable this if you're not
        # sure this is what you want.

        #set "?"
    }

    if [ "$TERM" != "linux" ] && [ -f "/opt/homebrew/bin/powerline-go" ]; then
        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
    fi
fi