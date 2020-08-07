#!/bin/sh

WID=$(xwininfo -root -tree | grep -i "Gnome-terminal" | grep -vi "Терминал" | tail -n1 | awk '{print $1}')
#WID=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)"| awk '{print $5}')
xdotool windowfocus $WID
xdotool key ctrl+shift+t
wmctrl -i -a $WID
sleep 1; xdotool type --delay 1 --clearmodifiers "$@"; xdotool key Return;
