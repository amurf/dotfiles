#!/bin/bash

# Hardcoded Dracula Colors
ITEM_BG=0xff44475a
ACCENT_COLOR=0xffbd93f9
GREEN=0xff50fa7b
ALT_TEXT=0xff6272a4

# $1 is the sid (e.g. 1, 2)
# $FOCUSED_WORKSPACE is from the trigger

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" \
    background.drawing=on \
    background.color=$ITEM_BG \
    background.border_width=1 \
    background.border_color=$GREEN \
    label.color=$ACCENT_COLOR
else
  sketchybar --set "$NAME" \
    background.drawing=off \
    label.color=$ALT_TEXT
fi
