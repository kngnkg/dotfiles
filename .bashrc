# change keybindings to vi mode
set -o vi

#
# History
#

# Set maximum number of saved history
export HISTSIZE=1000
export HISTFILESIZE=20000

# Ignore duplicate commands
export HISTCONTROL=ignoredups:erasedups

# Ignore specific commands
export HISTIGNORE="pwd:ls:la:ll:cd:history"

# Load aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Load functions
if [ -f ~/.functions ]; then
  source ~/.functions
fi

# git completion
source /usr/share/bash-completion/completions/git

# Init starship
eval "$(starship init bash)"
