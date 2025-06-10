#!/usr/bin/env bash

# Terminate already running bar instances (cleaner with IPC)
polybar-msg cmd quit

# Optionally wait a bit for bars to quit (for stability)
sleep 1

# Launch your single bar called "example"
echo "---" | tee -a /tmp/polybar.log
polybar kanami 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."

