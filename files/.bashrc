# Executed for non-login shells + login shells (sourced by .bash_profile)

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

###############################################################################
# Custom Command Aliases
###############################################################################
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

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
# Source any extra scripts we defined under ~/.scripts/extras
###############################################################################
 for f in ~/.scripts/extras/*.sh; do 
  source "$f"
done
