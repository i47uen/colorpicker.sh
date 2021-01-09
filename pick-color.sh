#!/usr/bin/env bash

color=$(colorpicker --short --one-shot --preview)

hex="${color//\#/}"

# copy color code to clipboard
echo $color | head -c -1 | xsel -b -i
# notify about it
dunstify -u low -i /usr/share/icons/Qogir-dark/48/apps/cs-color.svg "$color, copied to clipboard."
