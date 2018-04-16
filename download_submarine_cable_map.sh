#!/bin/sh

# collect the year
if [ -z ${1} ];
  then
    YEAR=`date +%Y`
  else
    YEAR=$1
fi

# build the URL
URL_BASE="http://c.tiles.telegeography.com/maps/submarine-cable-map-$YEAR/6"

# build the file suffix
if [ $1 > 2016 ];
  then
    SUF=png24
  else
    SUF=png
fi

echo "Starting download of $YEAR map from TeleGeography..."

# loop through the 64 frames (0-63)
for x in `seq 0 1 63`; do
  for y in `seq 0 1 63`; do
    URL=${URL_BASE}/${x}/${y}.$SUF
    wget -q $URL -O `printf "%08d_%08d.png" ${y} ${x}`
    echo -n .
  done
  echo -n " `expr $x + 1` / 64"
  echo
done

montage -mode Concatenate -tile x64 *_*.png sub_$YEAR.png
