if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]
then
	echo -n "Start Window Manager? (Y/n)"
	read -k key
	if ! [[ "$key" == "n" || "$key" == "N" ]]; then
	  exec startx
		#XKB_DEFAULT_LAYOUT=de XKB_DEFAULT_MODEL=pc101  sway
	fi
fi

trap;
