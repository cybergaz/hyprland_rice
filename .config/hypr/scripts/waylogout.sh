#!/bin/bash

waylogout --hide-cancel --screenshots --font="Poppins 3" --effect-blur=10x12 --indicator-thickness=5 --ring-color=00000000 --inside-color=#4BABB883 --text-color=0000000 --line-color=00000000 --ring-selection-color=#02FFAE --inside-selection-color="#2369EF56" --text-selection-color=cdd6f4ff --line-selection-color=00000088 --lock-command="$HOME/.config/hypr/scripts/lock.sh" --logout-command="systemctl restart sddm" --suspend-command="$HOME/.config/hypr/scripts/fake_sleep.sh" --hibernate-command="poweroff" --poweroff-command="poweroff" --reboot-command="reboot" --selection-label
