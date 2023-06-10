#!/bin/sh

# gtemp=$(brightnessctl g)

swayidle -w \
	timeout 90 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
	resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
	timeout 150 "systemctl suspend" \
	resume ''

# alacritty --config-file "$HOME/.config/alacritty/alacritty2.yml" -T alacritty_time -e tty-clock -csC 5
