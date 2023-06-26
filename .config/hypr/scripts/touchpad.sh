#!/bin/sh

# replace the value with your own touchpad device (list your device using ''hyprctl devices')
HYPRLAND_DEVICE="sppt2600:00-0911:5288-touchpad"

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR=/run/user/$(id -u)
fi

export STATUS_FILE="$XDG_RUNTIME_DIR/touchpad.status"

enable_touchpad() {
	printf "true" >"$STATUS_FILE"

	notify-send -u normal "...  Touchpad Enabled  ..."

	hyprctl keyword "device:$HYPRLAND_DEVICE:enabled" true

	hyprctl reload
	hyprctl --batch "keyword bindl ,switch:on:Lid Switch,exec,systemctl suspend ; keyword bindl ,switch:off:Lid Switch,exec,notify-send '     𝕎 𝕖 𝕝 𝕔 𝕠 𝕞 𝕖  𝔹 𝕒 𝕔 𝕜  𝔾 𝕒 𝕫     ' "
}

disable_touchpad() {
	printf "false" >"$STATUS_FILE"

	notify-send -u normal ". Touchpad Disabled ."

	hyprctl keyword "device:$HYPRLAND_DEVICE:enabled" false
}

if ! [ -f "$STATUS_FILE" ]; then
	enable_touchpad
else
	if [ $(cat "$STATUS_FILE") = "true" ]; then
		disable_touchpad
	elif [ $(cat "$STATUS_FILE") = "false" ]; then
		enable_touchpad
	fi
fi
