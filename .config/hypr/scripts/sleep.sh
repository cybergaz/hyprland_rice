#!/bin/sh

# gtemp=$(brightnessctl g)
swayidle -w \
	timeout 60 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
	resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
	timeout 100 'alacritty --config-file "$HOME/.config/alacritty/alacritty2.yml" -T alacritty_time -e tty-clock -csC 5' \
	resume ''
# timeout 15 "hyprctl dispatch dpms off" \
# resume 'hyprctl dispatch dpms on'
