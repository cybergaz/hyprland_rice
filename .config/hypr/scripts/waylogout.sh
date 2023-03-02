#!/bin/bash

waylogout --hide-cancel --screenshots --font="Poppins 2" --effect-blur=10x12 --indicator-thickness=2 --ring-color=00000000 --inside-color=00000055 --text-color=cdd6f4ff --line-color=00000000 --ring-selection-color=00000000 --inside-selection-color=aecfff10 --text-selection-color=cdd6f4ff --line-selection-color=00000088 --lock-command="$HOME/.config/hypr/scripts/lock.sh" --logout-command="systemctl restart sddm" --suspend-command="$HOME/.config/hypr/scripts/fake_sleep.sh" --hibernate-command="poweroff" --poweroff-command="poweroff" --reboot-command="reboot" --selection-label
