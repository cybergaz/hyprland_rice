if [ -f /tmp/lid_script_check_up ]

then
    $HOME/.config/waybar/scripts/caffeine.sh
    hyprctl dispatch dpms on
    sleep 0.4
    $HOME/.config/waybar/scripts/wallpaper.sh
    notify-send ". . : :   𝕎 𝕖 𝕝 𝕔 𝕠 𝕞 𝕖  𝔹 𝕒 𝕔 𝕜  𝔾 𝕒 𝕫   : : . ." 

    # notify-send "I have closed all the apps" "here is the list " -t 6000
    # notify-send ". . : :   Hey !   : : . ." -t 5000
    # kitty --hold cat /tmp/hyprctl_log
else
    touch /tmp/lid_script_check_up
    # notify-send "scripts not executed don't worry"
fi
