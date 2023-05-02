#!/bin/bash
if ! pgrep -x "swww" >/dev/null; then
	swww init
fi

pickup_directory="$HOME/Downloads/img"
no_of_img=$(ls $pickup_directory | wc -l)
array=($(ls ~/Downloads/img/))

select="$pickup_directory/${array[$((RANDOM % $no_of_img))]}"
swww img $select --transition-type grow --transition-step 0 --transition-pos top --transition-fps 255 --transition-bezier .2,1.7,0.4,1

echo "done"
