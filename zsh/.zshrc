#!/bin/zsh

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=/opt/dotnet/
export MSBuildSDKsPath=/opt/dotnet/sdk/$(dotnet --version)/Sdks

# Setting XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

PATH=$(ruby -e 'print Gem.user_dir')/bin:$HOME/.local/bin:$HOME/.local/bin/lib:$HOME/.local/bin/application_shortcuts:~/.dotnet/tools:$PATH:$HOME/.local/bin

#Adding XDG Support to Applications
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android

#Load oh-my-zsh configuration
[ -f "/$HOME/.config/zsh/oh-my.zsh" ] && source "/$HOME/.config/zsh/oh-my.zsh"

#Load aliases
[ -f "/$HOME/.config/zsh/alias.zsh" ] && source "/$HOME/.config/zsh/alias.zsh"
#Load theme
[ -f "/$HOME/.config/zsh/theme.zsh" ] && source "/$HOME/.config/zsh/theme.zsh"

#Load local configuration Options
[ -f "/$HOME/.z.local" ] && source "/$HOME/.z.local"

export EDITOR=editor
export VISUAL=editor
