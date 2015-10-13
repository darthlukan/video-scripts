#!/bin/bash

DIR=$HOME/tmp/
PALLET=${DIR}pallet.png
FILTERS="fps=60,scale=640:-1:flags=lanczos"

ffmpeg -v warning -i $1 -vf "$FILTERS,palettegen" -y $PALLET
ffmpeg -v warning -i $1 -i $PALLET -lavfi "$FILTERS [x]; [x][1:v] paletteuse" -y ${DIR}${2}.gif
