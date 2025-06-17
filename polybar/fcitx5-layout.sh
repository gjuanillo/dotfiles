#!/bin/bash

CURRENT_IM=$(fcitx5-remote -n)

case "$CURRENT_IM" in
    mozc | keyboard-jp)
        echo "JP"
        ;;
    keyboard-us)
        echo "EN"
        ;;
    *)
        echo "?"
        ;;
esac
