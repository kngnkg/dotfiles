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

#
# Aliases
#

# cd
alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'

# git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias gb='git branch'
alias gp='git push'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'

#
# Init starship
#
eval "$(starship init zsh)"
