#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

ACTIVE_WORKSPACE=$(aerospace list-workspaces --focused)
sketchybar --set active_aerospace_workspace icon="$FOCUSED_WORKSPACE" background.drawing=on icon.drawing=on
