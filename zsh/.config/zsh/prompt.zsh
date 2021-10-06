#!/bin/zsh

precmd() { vcs_info }

#Enable Promt Substitution
setopt PROMPT_SUBST

#VCS Info pport
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'

function getPrompt() {

    DEFAULT_USER_NAME="js"

    USER=$([[ "$(whoami)" != "$DEFAULT_USER_NAME" ]] && echo "%B%F{magenta}$(whoami)%f%b")
    HOST=$([ -n "$SSH_CLIENT" ] && echo "%B%F{blue}$(hostname)%f%b")
    AT=$([[ -n $USER ]] && [[ -n $HOST ]] && echo "%B%F{blue}@%f%b")
    DIR="%B%F{green}%99~%f%b"
    VCS='%B%F{yellow}$([[ -n $vcs_info_msg_0_ ]] && echo "$vcs_info_msg_0_ ")%f%b'
    ISROOT=$([[ $(id -u) = 0 ]] && echo "%B%F{red}$%f%b ")
    echo "$USER$AT$HOST $DIR $VCS$ISROOT"
}

PROMPT=$(getPrompt)
RPROMPT='%(?..%F{red}%?)%f'
