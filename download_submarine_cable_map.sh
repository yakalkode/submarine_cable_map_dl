#!/bin/bash

URL_BASE=http://c.tiles.telegeography.com/maps/submarine-cable-map-2014/6/
for x in `seq 0 1 63`; do
    for y in `seq 0 1 63`; do
	URL=${URL_BASE}/${x}/${y}.png
	wget -q $URL -O `printf "%08d_%08d.png" ${y} ${x}`
	echo -n .
    done
    echo 
done

montage -mode Concatenate -tile x64 *_*.png out.png
