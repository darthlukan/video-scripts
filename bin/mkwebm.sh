#!/bin/bash

DIR=$HOME/tmp/

ffmpeg -i $1 -codec:v libvpx -quality good -cpu-used 0 -b:v 1M \
    -qmin 10 -qmax 42 -maxrate 1M -bufsize 2M -vf scale=-1:1080 -threads 0 ${DIR}${2}.webm
