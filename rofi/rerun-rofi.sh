#/usr/bin/env bash

# rerun-rofi.sh restarts rofi when executed. 
#
# This can be used in conjuction with Entr to run evertime 
# the rofi config is changed:
#
# 	cd "path-to-rofi-config"
#	ls | entr -r "path-to-rerun-rofi.sh"
#

# Change this variable to where your rofi config is located
rasi_config_dir="$HOME/dotfiles/norse/rofi"
theme_name="norse"

notify-send "Updated '$theme_name' rofi config" 
rofi -show drun -config "$rasi_config_dir/$theme_name.rasi"

