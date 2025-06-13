#!/bin/bash
gpu_load=$(radeontop -d - -l 1 | grep "gpu " | awk -F 'gpu |%' '{print int($2)}')

echo "$gpu_load"
