#!/bin/fish

# Directory containing your wallpapers
set DIR "$HOME/Pictures/wallpapers"

# Get a list of all files in the directory
set PICS $DIR/*

# Pick a random image from the list
# (Fish indices start at 1)
set RANDOM_PIC (random choice $PICS)

# Apply the wallpaper using the awww command
# Added a check to ensure the daemon is running
if pgrep -x "awww-daemon" > /dev/null
    awww img "$RANDOM_PIC" --transition-type wipe --transition-duration 2
else
    # If daemon isn't running, start it and then set wallpaper
    awww-daemon &
    sleep 0.5
    awww img "$RANDOM_PIC" --transition-type wipe --transition-duration 2
end 
