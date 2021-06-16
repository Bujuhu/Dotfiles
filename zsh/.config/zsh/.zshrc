#!/bin/zsh

PATH=$PATH_ENV:$PATH

#Setup History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$XDG_CACHE_HOME/zsh/history

setopt autocd		# Automatically cd into typed directory.
setopt NO_CASE_GLOB # Case Insensitive Globbing
#setopt CORRECT # Make Autocorrect suggestions
#setopt CORRECT_ALL # Make Autocorrect suggestions

bindkey -e
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
for dump in ~/.$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION(N.mh+24); do
  compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
done
compinit -C
_comp_options+=(globdots)		# Include hidden files.

#Load aliases
[ -f "/$XDG_CONFIG_HOME/zsh/alias.zsh" ] && source "/$XDG_CONFIG_HOME/zsh/alias.zsh"
#Load environment
#[ -f "/$XDG_CONFIG_HOME/zsh/environment.zsh" ] && source "/$XDG_CONFIG_HOME/zsh/environment.zsh"
[ -f "/$XDG_CONFIG_HOME/zsh/environment.zsh.local" ] && source "/$XDG_CONFIG_HOME/zsh/environment.zsh.local"
#Load Prompt
[ -f "/$XDG_CONFIG_HOME/zsh/prompt.zsh" ] && source "/$XDG_CONFIG_HOME/zsh/prompt.zsh"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
