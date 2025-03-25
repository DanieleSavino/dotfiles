#!/bin/bash

# Check input argument and set the monitor configuration
case "$1" in
    "4k")
        echo 'Setting resolution to 3840x2160...'
        echo 'monitor = DP-1, 3840x2160@60.0, 0x0, 1.066667' > $HOME/.config/hypr/monitors.conf
        echo 'Done.'
        ;;
    "2k")
        echo 'Setting resolution to 2560x1440...'
        echo 'monitor = DP-1, 2560x1440@60.0, 0x0, 0.833333' > $HOME/.config/hypr/monitors.conf
        echo 'Done.'
        ;;
    "hd")
        echo 'Setting resolution to 1920x1080...'
        echo 'monitor = DP-1, 1920x1080@60.0, 0x0, 0.666667' > $HOME/.config/hypr/monitors.conf
        echo 'Done.'
        ;;
    *)
        echo 'Invalid Resolution'
        ;;
esac
