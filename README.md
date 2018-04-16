submarine_cable_map_dl
======================
This script aims to download the full map of submarine cable available online at https://www.telegeography.com/. To do this, the script downloads each tile sequentially and merge all these tiles with the `montage` program. You need to install **ImageMagick** to get `montage`.

If no arguments are entered, it will download the map of the current year (which if done too early may not download anything). If you enter a year, it will download the map from that year. Maps are from 2012 on, currently up to 2018 as of writing this.

If you like the maps on telegeography, please look at purchasing the legitimate map instead of downloading and printing. This script was intended to download for personal use as a high resolution desktop background or for training purposes.

Usage
=====
``$ ./download_submarine_cable_map.sh [<year>]``

``$ display out.png``
