#!/bin/zsh
PATH=$(ruby -e 'print Gem.user_dir')/bin:~/.bin:/$HOME/.bin/application_shortcuts:~/.dotnet/tools:$PATH
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=/opt/dotnet/
export MSBuildSDKsPath=/opt/dotnet/sdk/$(dotnet --version)/Sdks

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
