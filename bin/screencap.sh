#!/bin/bash

DIR=$HOME/tmp/

WIDTH=1920
HEIGHT=1080

MONITOR1=0
MONITOR2=1920
MONITOR3=3840

case $1 in:
    1)
        X1=$MONITOR1
    2)
        X1=$MONITOR2
    3)
        X1=$MONITOR3
    *)
        X1=$MONITOR2
esac

ffmpeg -f x11grab -r 60 -s ${WIDTH}x${HEIGHT} -i ":0.0+$X1,0" -vcodec libx264 -vpre 1080p -threads 0 ${DIR}${2}.mkv
