#!/bin/bash

WALL=$(find /home/god/Images/w -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | shuf -n 1)

hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper "eDP-1,$WALL"
