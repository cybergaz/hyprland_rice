if [ -f /tmp/lid_script_check_down ]
then
    hyprctl dispatch dpms off
    # $HOME/.config/hypr/scripts/fake_sleep.sh
#     rm -rf /tmp/hyprctl_log
#     hyprctl clients | grep Window >> /tmp/hyprctl_log
#
#     kill $(hyprctl clients | grep pid | awk '{ print $2 }' ) &
else
    touch /tmp/lid_script_check_down
    # notify-send "scripts not executed don't worry"

fi
