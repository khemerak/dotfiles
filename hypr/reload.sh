#!/usr/bin/zsh

# Kill all running instances
killall waybar
#killall swayosd-server

# Restart them in the background
waybar &
#swayosd-server &

# Add a notification so you know it worked!
notify-send "Hyprland" "UI components reloaded."
