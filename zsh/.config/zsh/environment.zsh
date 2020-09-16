#!/build/zsh
# Setting XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Dotnet Core Options
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=/opt/dotnet/
export MSBuildSDKsPath=/opt/dotnet/sdk/$(dotnet --version)/Sdks

#Adding XDG Directory Support to Applications
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export NUGET_PACKAGES="$XDG_CACHE_HOME"/
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ELECTRUMDIR="$XDG_DATA_HOME/electrum"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export HISTFILE=$XDG_CACHE_HOME/bash/history
export RANDFILE="$XDG_DATA_HOME/openssl/rnd"
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node/repl_history
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer

#Setting default editor
export EDITOR=editor
export VISUAL=editor

#Expoting Partial Path here to ensure that ruby is not called evrey time a new shell session is opened
export PATH_ENV=$(ruby -e 'print Gem.user_dir')/bin:$HOME/.local/bin:$HOME/.local/bin/lib:$HOME/.local/bin/application_shortcuts:~/.dotnet/tools

#Loading local environemnt variables
[ -f "/$XDG_CONFIG_HOME/zsh/environment.zsh.local" ] && source "/$XDG_CONFIG_HOME/zsh/environment.zsh.local"