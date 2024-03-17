#! /bin/bash

sudo rm -rf "$HOME/.config/hypr/themes/current_theme"
cp -r "$(find $HOME/.config/hypr/themes/ -type d -name *_theme | shuf -n 1)" "$HOME/.config/hypr/themes/current_theme"
swaybg -o \* -i "$(find $HOME/.config/hypr/themes/current_theme/wallpapers/ -type f | shuf -n 1)" -m fill & disown
