#!/bin/bash

# Extract GPU temp (strip + sign) -> Nvidia Graphics
# gpu_temp=$(sensors | awk '/temp1:/ {print $2}' | tr -d '+')

gpu_temp=$(sensors | awk '/^amdgpu-pci-0600/,/^$/' | awk '/edge:/ {gsub(/\+|°C/, "", $2); print $2}')

echo "$gpu_temp"
