#!/bin/sh
swayidle -w \
                timeout 120 'temp=$(brightnessctl g); brightnessctl set $((temp / 2))' \
                    resume 'temp=$(brightnessctl g); brightnessctl set $((temp * 2))' \
                timeout 300 "$HOME/.config/hypr/scripts/lock.sh & sleep 2 && hyprctl dispatch dpms off" \
                    resume 'hyprctl dispatch dpms on' \
                


#Matcha-dark-sea
