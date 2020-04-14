#!/bin/zsh

# Command substituions
command-e git &&
alias gti='git'

command-e npm &&
alias npm-exec='PATH=$(npm bin):$PATH'

command-e beet &&
alias rbeet='beet --config $HOME/.config/beets/remote-library-config.yml'

#Set the Terminal variable to xterm-color for better compatibility
command-e ssh &&
alias ssh='TERM=xterm-color ssh'

command-e code-oss &&
alias code="code-oss"

command-e dotnet &&
alias msbuild="dotnet msbuild"

#Navigation and editing shortcuts
alias pro="CDPATH=~/Sync/Projects cd"

alias ed.="$VISUAL $HOME/Dotfiles/"

#adding applications outside of PATH
alias racethesun="cd /opt/racethesun && ./RaceTheSun.x86"