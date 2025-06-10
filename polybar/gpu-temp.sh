#!/bin/bash

# Extract CPU temp (strip + sign)
# cpu_temp=$(sensors | awk '/Tctl:/ {print $2}' | tr -d '+')

# Extract GPU temp (strip + sign)
gpu_temp=$(sensors | awk '/temp1:/ {print $2}' | tr -d '+')

echo "$gpu_temp"
