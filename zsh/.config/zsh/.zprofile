#!/bin/zsh
#Load environment
[ -f "$HOME/.config/zsh/environment.zsh" ] && source "/$HOME/.config/zsh/environment.zsh"
PATH=$PATH_ENV:$PATH

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]
then
	echo -n "Start Window Manager? (Y/n)"
	read -k key
	echo
	if ! [[ "$key" == "n" || "$key" == "N" ]]; then
	while true; do
		exec startx "$XDG_CONFIG_HOME/X11/xinitrc"
	done
	fi
fi

trap;
