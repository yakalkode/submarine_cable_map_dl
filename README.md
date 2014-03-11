submarine_cable_map_dl
======================
This script aims to download the full map of submarine cable available online at http://submarine-cable-map-2014.telegeography.com/. To do this, the script downloads each tile sequentially and merge all these tiles with the `montage` program. You need to install **ImageMagick** to get `montage`.

Usage
=====
``$ ./download_submarine_cable_map.sh``

``$ display out.png``
