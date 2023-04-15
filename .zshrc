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
  $path
)

# Do not keep the same command in the history
setopt hist_ignore_all_dups

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
