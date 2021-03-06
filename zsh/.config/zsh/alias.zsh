#!/bin/zsh
command-e() { command -v $1 > /dev/null }

alias ll='ls -la'

#SystemD
alias sysl='systemctl'
alias joul='journalctl'
alias netl='networkctl'
alias tdl='timedatectl'

#Docker
alias dkr='docker'
alias dkrc='docker-compose'
alias dcu='docker-compose up -d'
alias dcub='docker-compse up --build -d'
alias dcd='docker-compose down'

#Git
alias gti='git'
alias gis='git status'
alias gia="git add $@"
alias gic="git commit $@"
alias gicm="git commit -m $@"
alias gip="git push $@"
alias giu="gia . && gic $@ && gip" #Git unified
alias gnb="git checkout -b $@" #Git new Branch
alias gsb="git checkout $@" #Git switch Branch
alias gpb="git branch" #Git print branch
alias gil="git log"

alias enable='sudo -E $SHELL'

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


alias printscripts="find ~/.local/bin -maxdepth 1 -not -type d"
alias printaliases="grep alias < ~/.config/zsh/alias.zsh"


# Command substituions

