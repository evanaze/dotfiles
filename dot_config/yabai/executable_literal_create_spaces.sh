#!/bin/bash

NUM_END_SPACES=5
NUM_ACTIVE_SPACES=$(yabai -m query --spaces | jq length)
((SPACES_TO_CREATE = NUM_END_SPACES - NUM_ACTIVE_SPACES))

while [ $SPACES_TO_CREATE -gt 0 ]
do
    yabai -m space --create
    ((SPACES_TO_CREATE--))
done

