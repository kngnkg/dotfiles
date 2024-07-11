#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  # $(go env GOPATH)/bin(N)
  $path
)

#
# History
#

# Do not keep the same command in the history
setopt hist_ignore_all_dups

# Do not save history command
setopt hist_no_store

# Set maximum number of saved history
export HISTSIZE=1000
export SAVEHIST=200000

# Ignore specific commands
export HISTORY_IGNORE="(pwd|ls|la|ll|cd|history)"

# Load aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Load functions
if [ -f ~/.functions ]; then
  source ~/.functions
fi

# Init starship
eval "$(starship init zsh)"
