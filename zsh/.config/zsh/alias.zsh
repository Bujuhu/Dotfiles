#!/bin/zsh
alias command-e="command -v $1 > /dev/null"

alias ll='ls -la'

#SystemD
alias sysl='systemctl'
alias joul='journalctl'
alias netl='networkctl'
alias tdl='timedatectl'

#Docker
alias ds="doas /usr/bin/systemctl start docker"
alias dkr="docker $@"
alias db="docker build $@"
alias db="docker tag $@"
alias db="docker logs $@"
alias dps="docker ps $@"
alias dpc="docker container prune"
alias dsc="docker stop $@"
alias dpsa="docker ps -a $@"
alias dkrc="docker-compose $@"
alias dcu="docker-compose up -d"
alias dcub="docker-compose up --build -d $@"
alias dcd="docker-compose down $@"
alias dclf="docker-compose logs --follow"

#Esp-Idf
alias get_idf='. $HOME/esp/esp-idf/export.sh'

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

alias enable='su -c $SHELL'

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
alias printaliases="< ~/.config/zsh/alias.zsh"


# Quick Edits

alias vibspwm="$EDITOR ~/Dotfiles/bspwm/.config/bspwm/bspwmrc"
alias visxhkd="$EDITOR ~/Dotfiles/sxhkd/.config/sxhkd/sxhkdrc"
alias vistartx=" $EDITOR ~/Dotfiles/X/.config/X11/xinitrc" 

## Keyboard Keymaps

## Zsh
alias vialias="$EDITOR ~/Dotfiles/zsh/.config/zsh/alias.zsh"
alias vienv="$EDITOR ~/Dotfiles/zsh/.config/zsh/environment.zsh"
alias virc="$EDITOR ~/Dotfiles/zsh/.config/zsh/.zshrc"
alias vizprofile="$EDITOR ~/Dotfiles/zsh/.config/zsh/.zprofile"
alias vienvl="$EDITOR ~/Dotfiles/zsh/.config/zsh/environment.zsh.local"
alias vissh="$EDITOR ~/Dotfiles/ssh/.ssh/config"
alias vivim="$EDITOR ~/Dotfiles/vim/.config/vim/vimrc"


# Keymaps
alias printkeymap="sed -n '47,57p' ~/qmk_firmware/keyboards/planck/keymaps/js-default/keymap.c "
alias printkeymapl="sed -n '100,110p' ~/qmk_firmware/keyboards/planck/keymaps/js-default/keymap.c "
alias printkeymapr="sed -n '118,128p' ~/qmk_firmware/keyboards/planck/keymaps/js-default/keymap.c "
alias printkeymapa="sed -n '155,166p' ~/qmk_firmware/keyboards/planck/keymaps/js-default/keymap.c "
alias printkeymapf="sed -n '173,184p' ~/qmk_firmware/keyboards/planck/keymaps/js-default/keymap.c "
