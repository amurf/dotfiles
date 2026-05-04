#!/bin/bash

# Fetch number of outdated packages
COUNT=$(brew outdated | wc -l | tr -d ' ')

# Always keep it visible
sketchybar --set "$NAME" label="$COUNT" drawing=on
