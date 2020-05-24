#!/bin/zsh

PATH=$PATH_ENV:$PATH

#Setup History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$XDG_CACHE_HOME/zsh/history

setopt autocd		# Automatically cd into typed directory.
setopt NO_CASE_GLOB # Case Insensitive Globbing
setopt CORRECT # Make Autocorrect suggestions
setopt CORRECT_ALL # Make Autocorrect suggestions

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#Load aliases
[ -f "/$XDG_CONFIG_HOME/zsh/alias.zsh" ] && source "/$XDG_CONFIG_HOME/zsh/alias.zsh"
#Load Prompt
[ -f "/$XDG_CONFIG_HOME/zsh/prompt.zsh" ] && source "/$XDG_CONFIG_HOME/zsh/prompt.zsh"
