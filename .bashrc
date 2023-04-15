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
