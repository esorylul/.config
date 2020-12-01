#!/bin/bash

xrandr --output HDMI-1 --auto --output eDP-1 --off
#xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
#xrandr --addmode Virtual-1 1920x1080
#xrandr -s 1920x1080

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keycode 9 = Caps_Lock'
xmodmap -e 'keycode 66 = Escape'

picom -b
feh --bg-fill ~/Pictures/Arch-1.jpg
fcitx5 &
qv2ray & # 自启动却qV2ray 
ZSH_DIR="$HOME/.zshrc"
if [ ! -e $ZSH_DIR ]; then
			ln -s $HOME/.config/zsh/zshrc $HOME/.zshrc	
fi
show_date(){
				date="$(date +"%a, %b %d %R")"
				echo "$date"
}

show_mem(){
				mem="$(free -h | awk '/Mem:/ {printf $3 " / " $2}')"	
				echo "Mem: $mem"
}

kernel(){
      	kernel="$(uname -sr | sed "s/-arch1-1//g")"
	      echo $kernel
}

status_bar(){
				echo "  $(kernel) | $(show_mem) | $(show_date)"
}

while true; do
				xsetroot -name "$(status_bar)"
				sleep 30
done
