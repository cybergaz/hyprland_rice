#!/bin/bash

$HOME/.config/hypr/scripts/lock.sh & 
sleep 3
if pgrep -x swaylock >/dev/null; then 
    
hyprctl dispatch dpms off;

fi
