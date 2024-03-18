#!/bin/sh

sudo rm -rf "$HOME/.config/hypr/themes/current_theme"

new=$(find $HOME/.config/hypr/themes/ -maxdepth 1 -type d -name \*_theme | shuf -n 1)

cp -r "$new" "$HOME/.config/hypr/themes/current_theme"

new_wall=$(find $HOME/.config/hypr/themes/current_theme/wallpapers/ -type f | shuf -n 1)

killall swaybg

swaybg -o \* -i "$new_wall" -m fill & disown

hyprctl reload
