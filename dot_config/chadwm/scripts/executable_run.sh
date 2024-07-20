#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/.config/lockscreenwp/swayfx_mascot_1920x1080.png &
# xset r rate 200 50 &
picom &
fcitx5 &

~/.config/chadwm/scripts/bar.sh &
while type dwm >/dev/null; do dwm && continue || break; done
