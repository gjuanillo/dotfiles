#!/usr/bin/env bash

# Terminate already running bar instances (cleaner with IPC)
polybar-msg cmd quit

# Optionally wait a bit for bars to quit (for stability)
sleep 1

# Launch your single bar called "example"
echo "---" | tee -a /tmp/polybar.log
polybar main-top 2>&1 | tee -a /tmp/polybar.log & disown
polybar main-bottom 2>&1 | tee -a /tmp/polybar.log & disown
polybar secondary 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."

