#!/usr/bin/env bash
#
# This script is an example. You might need to edit this script
# depending on your distro if it doesn't work for you.
#
# Uncomment the following line for debug:
#exec xterm

#xhost + is just a workaround for a weird issue i'm having and might be a security risk on multiuser systems
xhost +
. ~/.config/zsh/.zprofile
exec ~/.config/X11/xinitrc
exit 0
