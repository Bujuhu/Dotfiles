#!/build/zsh

alias command-e="command -v $1 &> /dev/null"

# Setting XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Dotnet Core Options
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=/opt/dotnet/
command-e dotnet &&
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

#XRDM
export XRDM_DIR=$XDG_CONFIG_HOME/X11
export XRDM_FONT_DIR=$XRDM_DIR/fonts
export XRDM_COLOR_DIR=$XRDM_DIR/colors
export XRDM_PRESET_DIR=$XRDM_DIR/presets
export XRDM_PROGRAM_DIR=$XRDM_DIR/programs

#Setting default editor
export EDITOR=vim
export VISUAL=editor

#Expoting Partial Path here to ensure that ruby is not called evrey time a new shell session is opened
export PATH_ENV=$HOME/.local/bin

#Add Ruby Bins (if they exist)
command-e ruby &&
export PATH_ENV=$(ruby -e 'print Gem.user_dir')/bin:$PATH_ENV

#Add Dotnet Bins (if they exist)
command-e dotnet &&
export PATH_ENV=$PATH_ENV:~/.dotnet/tools

#Add Flatpak bins (if they exist)
if [[ -n "$XDG_DATA_HOME" ]] && [[ -d "$XDG_DATA_HOME/flatpak/exports/bin" ]]; then
  export PATH_ENV="$PATH_ENV:$XDG_DATA_HOME/flatpak/exports/bin"
elif [[ -n "$HOME" ]] && [[ -d "$HOME/.local/share/flatpak/exports/bin" ]]; then
  export PATH_ENV="$PATH_ENV:$HOME/.local/share/flatpak/exports/bin"
fi

if [[ -d /var/lib/flatpak/exports/bin ]]; then
  export PATH_ENV="$PATH_ENV:/var/lib/flatpak/exports/bin"
fi


#Loading local environemnt variables
[ -f "/$XDG_CONFIG_HOME/zsh/environment.zsh.local" ] && source "/$XDG_CONFIG_HOME/zsh/environment.zsh.local"
