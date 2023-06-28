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
if [ -f /usr/share/bash-completion/completions/git ]; then
  source /usr/share/bash-completion/completions/git
  ## Allow aliases to be completed as well.
  __git_complete g __git_main
fi

# Init starship
eval "$(starship init bash)"
