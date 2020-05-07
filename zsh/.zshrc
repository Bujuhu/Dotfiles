#!/bin/zsh

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=/opt/dotnet/
export MSBuildSDKsPath=/opt/dotnet/sdk/3.1.103/Sdks
# Update Msbuild SDK Version: dotnet --version

# Setting XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Setting up Path Variable
PATH=$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin:$HOME/.local/bin/lib:$HOME/.local/bin/application_shortcuts:~/.dotnet/tools:$PATH:$HOME/.local/bin
# Update Ruby Gem User dir: ruby -e 'print Gem.user_dir'

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

#Adding XDG Support to Applications
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export VIMINIT='source "$XDG_CONFIG_HOME/vim/vimrc"'

#Load aliases
[ -f "/$HOME/.config/zsh/alias.zsh" ] && source "/$HOME/.config/zsh/alias.zsh"
#Load Prompt
[ -f "/$HOME/.config/zsh/prompt.zsh" ] && source "/$HOME/.config/zsh/prompt.zsh"
#Load theme
[ -f "/$HOME/.config/zsh/theme.zsh" ] && source "/$HOME/.config/zsh/theme.zsh"

#Load local configuration Options
[ -f "/$HOME/.z.local" ] && source "/$HOME/.z.local"

export EDITOR=editor
export VISUAL=editor
