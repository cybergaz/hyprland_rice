#!/bin/bash

waylogout --hide-cancel --screenshots --font="Poppins 3" --effect-blur=10x12 --indicator-thickness=2 --ring-color=00000005 --inside-color=#E9EBF030 --text-color=0000000 --line-color=00000000 --ring-selection-color=#E9EBF0 --inside-selection-color="#00000030" --text-selection-color=#E9EBF080 --line-selection-color=00000000 --lock-command="$HOME/.config/hypr/scripts/lock.sh" --suspend-command="$HOME/.config/hypr/scripts/fake_sleep.sh" --poweroff-command="poweroff" --reboot-command="reboot" --effect-vignette 0.2:0.8
