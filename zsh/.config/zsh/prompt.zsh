#!/bin/zsh

precmd() { vcs_info }

#Enable Promt Substitution
setopt PROMPT_SUBST

#VCS Info pport
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'

PROMPT='%B%F{green}%99~%f%b %B%F{yellow}${vcs_info_msg_0_}%f%b '

[[ $(id -u) = 0 ]] && PROMPT="$PROMPT%B%F{red}$%f%b "

RPROMPT='%(?..%F{red}%?)%f'
