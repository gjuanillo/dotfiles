#!/bin/bash

# Define temp files
IMAGE=/tmp/screen_locked.png
BLURRED=/tmp/screen_locked_blur.png

rm -f "$IMAGE" "$BLURRED"

# Take a screenshot of the full desktop (both monitors)
scrot "$IMAGE"

# Blur the screenshot using imagemagick
convert "$IMAGE" -blur 0x8 "$BLURRED"

# Lock the screen with the blurred image
i3lock -i "$BLURRED" --nofork
