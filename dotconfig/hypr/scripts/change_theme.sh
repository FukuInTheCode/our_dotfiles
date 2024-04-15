#!/bin/sh

sudo rm -rf "$HOME/.config/hypr/themes/current_theme"

new=""

if [ "$#" -eq 1 ]; then
    new=$(echo -n "$HOME/.config/hypr/themes/$1")
fi
if ! [ -d "$new" ]; then
    new=$(find $HOME/.config/hypr/themes/ -maxdepth 1 -type d -name \*_theme | shuf -n 1)
fi

cp -r "$new" "$HOME/.config/hypr/themes/current_theme"

new_wall=$(find $HOME/.config/hypr/themes/current_theme/wallpapers/ -type f | shuf -n 1)

killall swaybg

swaybg -o \* -i "$new_wall" -m fill & disown

hyprctl reload
