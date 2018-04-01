#!/bin/zsh
#Aliases
alias del="mv -t ~/.local/share/Trash/files"

alias gti='git'
alias npm-exec='PATH=$(npm bin):$PATH'

#Set the Terminal variable to xterm-color for better compatibility
alias ssh='TERM=xterm-color ssh'

#Directory Shortcuts
alias pro="CDPATH=~/Sync/Projects cd"

#Command substitutions
alias code="code-oss"
#salias ssh="printf '\033]11;thistle1\007';ssh"

#adding applications outside of PATH
alias racethesun="cd /opt/racethesun && ./RaceTheSun.x86"
