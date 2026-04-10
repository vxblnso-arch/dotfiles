#!/bin/bash
WALLS=(~/wallpapers/*.jpg ~/wallpapers/*.png)
RANDOM_WALL=${WALLS[$RANDOM%${#WALLS[@]}]}
awww img --transition-type center --transition-duration 2 --transition-fps 60 "$RANDOM_WALL"
