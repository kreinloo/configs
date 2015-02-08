#!/bin/sh

export GTK2_RC_FILES="/etc/gtk-2.0/gtkrc:$HOME/.gtkrc-2.0"
setxkbmap ee
xset +fp /usr/share/fonts/local
xset fp rehash
xsetroot -cursor_name left_ptr &
xrdb     -merge .Xresources &
hsetroot -fill $HOME/gfx/marwall2.png &

#while true; do
dwmstatus &
dwm 2> ~/.dwm.log
killall dwmstatus
#done

#exec gnome-session
#exec cinnamon-session
