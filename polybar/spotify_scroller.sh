#!/bin/bash

# Name of the polybar bar where spotify modules are
PARENT_BAR="main"
PARENT_BAR_PID=$(pgrep -af "polybar $PARENT_BAR" | awk '{print $1}')

# Audio player (playerctld auto-switches to active player)
PLAYER="playerctld"

# Format for display
FORMAT="{{ title }} - {{ artist }}"


# Hook indices (Polybar hook-0 = 1, hook-1 = 2)
HOOK_PLAY=2   # Show play icon () when paused
HOOK_PAUSE=1  # Show pause icon () when playing

# Sends a hook update to the correct polybar instance
update_hooks() {
    [ -z "$1" ] && return
    while IFS= read -r id; do
        # Decrement $2 by 1 because hook numbers are 0-based in the new syntax
        polybar-msg -p "$id" action "#spotify-play-pause.hook.$(( $2 - 1 ))" >/dev/null 2>&1
    done <<< "$1"
}

# Get player status
PLAYERCTL_STATUS=$(playerctl --player="$PLAYER" status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    STATUS="No player is running"
else
    STATUS=$PLAYERCTL_STATUS
fi

# If script is called with --status, just print the status
if [ "$1" == "--status" ]; then
    echo "$STATUS"
    exit 0
fi

# Main display + hook update logic
case "$STATUS" in
    "Stopped")
        echo "No music is playing"
        ;;
    "Paused")
        update_hooks "$PARENT_BAR_PID" $HOOK_PLAY
        playerctl --player="$PLAYER" metadata --format "$FORMAT"
        ;;
    "Playing")
        update_hooks "$PARENT_BAR_PID" $HOOK_PAUSE
        playerctl --player="$PLAYER" metadata --format "$FORMAT"
        ;;
    *)
        echo "$STATUS"
        ;;
esac
