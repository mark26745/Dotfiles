
#! /bin bash
#dwm autostart

#compositor
picom &

#wallpaper --figure out random wallpapers
nitrogen --restore &

#bar info
slstatus &

#notifications
dunst &

#keychord manager
sxhkd -c ~/.config/sxhkd/sxhkdrc &




