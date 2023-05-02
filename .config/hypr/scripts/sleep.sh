#!/bin/sh
swayidle -w \
	timeout 60 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
	resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
	timeout 100 'temp=$(brightnessctl g); brightnessctl set $((temp / 2)) ; alacritty --config-file "$HOME/.config/alacritty/alacritty2.yml" -T alacritty_time -e tty-clock -csC 5' \
	resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))'
# timeout 20 "hyprctl dispatch dpms off" \
# resume '$HOME/.config/hypr/scripts/lid_up.sh'
