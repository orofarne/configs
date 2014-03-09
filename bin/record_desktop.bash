#!/bin/bash -x

# find out what size the screen is set to
RESOLUTION=$(xrandr 2>/dev/null | grep current | sed 's/.*current //;s/,.*//;s/ x /x/')

avconv \
    -f x11grab -r 15 -s $RESOLUTION -i :0.0 \
    -f pulse -i default \
    -vcodec libx264 -preset ultrafast -profile:v baseline \
    -acodec pcm_s16le \
    -threads 1 \
    -y desktop.$$.mkv
