#!/bin/bash

WALLPAPER_DIR="$HOME/.config/wallpapers"

WALLPAPER=$(ls "$WALLPAPER_DIR" | shuf -n 1)

swaybg -i "$WALLPAPER_DIR/$WALLPAPER"
