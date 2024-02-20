#! /bin/bash

sudo rm -rf "$HOME/.config/hypr/themes/current_theme"
cp -r "$HOME/.config/hypr/themes/$(ls ~/.config/hypr/themes/ | shuf -n 1)" "$HOME/.config/hypr/themes/current_theme"
