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
alias gp='git push'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'

#
# Init starship
#
eval "$(starship init bash)"
