#
# Aliases
#

# util
## show path
alias path='echo $PATH | tr ":" "\n"'
alias bashrc='source ~/.bashrc'

# cd
alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
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
alias gd='git diff'
alias gds='git diff --staged'
alias gfo='git fetch origin'
alias gl='git log --all --graph --decorate --oneline'
alias gpo='git push origin'
alias gs='git status'
alias gsc='git switch -c'
alias gsm='git switch main'

#
# git completion
#
source /usr/share/bash-completion/completions/git

#
# Init starship
#
eval "$(starship init bash)"
