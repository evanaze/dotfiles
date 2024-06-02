#!/bin/bash

NUM_END_SPACES=6
NUM_ACTIVE_SPACES=$(yabai -m query --spaces | jq length)
NUM_ACTIVE_DISPLAYS=$(yabai -m query --displays | jq length)

((SPACES_TO_CREATE = NUM_END_SPACES - NUM_ACTIVE_SPACES))

while [ $SPACES_TO_CREATE -gt 0 ]
do
    yabai -m space --create
    ((SPACES_TO_CREATE--))
done

# Dual monitor setup
if [ $NUM_ACTIVE_DISPLAYS -eq 2 ]; then
    # Send the Brave, Obsidian, Spotify, and Mail spaces to the second display
    yabai -m space 2 --display 2
    yabai -m space 3 --display 2
    yabai -m space 4 --display 2
    yabai -m space 5 --display 2
    yabai -m space 6 --display 2
fi

