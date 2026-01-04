#!/bin/sh
ln -sf "$(eval echo $(cat $HOME/hyprland/extra/waypaper/config.ini | grep wallpaper | cut -d'=' -f2 | xargs))" "$HOME/hyprland/extra/waypaper/wallpaper"
exec hyprlock
