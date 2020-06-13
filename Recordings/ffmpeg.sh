#!/bin/sh

encode()
{
  ffmpeg -y \
    -i $1.mov \
    -preset veryslow \
    -crf 10 \
    -pix_fmt yuv420p \
    -vf 'tmix=frames=3:weights="1 2 1"' \
    -r 30 \
    $1.mp4
}

#encode Cut1
encode Cut2a
encode Cut2b
