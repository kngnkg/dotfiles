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
# Options
#

# Do not keep the same command in the history
setopt hist_ignore_all_dups

#
# Aliases
#

# util
## show path
alias path='echo $PATH | tr ":" "\n"'
alias zshrc='source ~/.zshrc'

# cd
alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias cdp='cd ~/proj/'
alias cddot='cd ~/dotfiles/'

# ls
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'

# git
## show all git aliases
alias gitls='alias | grep git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git log --all --graph --decorate --oneline'
alias gpo='git push origin'
alias gs='git status'
alias gsc='git switch -c'
alias gsm='git switch main'

# docker
alias dcbuild='docker compose build'
alias dcup='docker compose up'
alias dcdown='docker compose down'
alias dcps='docker compose ps'
alias dclogs='docker compose logs'

#
# Init starship
#
eval "$(starship init zsh)"
