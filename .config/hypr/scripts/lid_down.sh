# touch /tmp/check

if [ -f /tmp/check ]; then
	systemctl suspend
	# rm -rf /tmp/check
	# hyprctl dispatch dpms off
	# $HOME/.config/waybar/scripts/caffeine.sh
#     rm -rf /tmp/hyprctl_log
#     hyprctl clients | grep Window >> /tmp/hyprctl_log
#
#     kill $(hyprctl clients | grep pid | awk '{ print $2 }' ) &
else
	notify-send "nothing happened don't worry"
	touch /tmp/check
	# echo "hello"
	# notify-send "scripts not executed don't worry"

fi
