#!/bin/zsh
command-e() { command -v $1 > /dev/null }

# Command substituions
command-e git &&
alias gti='git'

alias ll='ls -la'
alias sc='systemctl'
alias jc='journalctl'
alias dk='docker'
alias dkc='docker-compose'

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

#adding flatpak applications
alias teamspeak3="flatpak run com.teamspeak.TeamSpeak"
alias steam="flatpak run com.valvesoftware.Steam"
alias dbeaver="flatpak run io.dbeaver.DBeaverCommunity"
alias minecraft="flatpak run com.mojang.Minecraft"

#Aliases for Applications to ensure they comply to the XDG Base Directory Spec
alias wget=wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"
