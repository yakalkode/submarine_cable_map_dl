submarine_cable_map_dl
======================
This script aims to download the full map of submarine cable available online at https://www.telegeography.com/. To do this, the script downloads each tile sequentially and merge all these tiles with the `montage` program. You need to install **ImageMagick** to get `montage`.

If no arguments are entered, it will download the map of the current year (which if done too early may not download anything). If you enter a year, it will download the map from that year. Maps are from 2012 on, currently up to 2018 as of writing this.

If you like the maps on telegeography, please look at purchasing the legitimate map instead of downloading and printing. This script was intended to download for personal use as a high resolution desktop background or for training purposes.

Usage
=====
``$ ./download_submarine_cable_map.sh [<year>]``

``$ display out.png``

Original
========
[2012 sponsored by Telecom Egypt](http://submarine-cable-map-2012.telegeography.com/) - new age map style

[2013 sponsored by Telecom Egypt](http://submarine-cable-map-2013.telegeography.com/) - classic map style

[2014 sponsored by Mobily](http://submarine-cable-map-2014.telegeography.com/) - new age map style

[2015 sponsored by PCCW Global](http://submarine-cable-map-2015.telegeography.com/) - classic map style

[2016 sponsored by PCCW Global](http://submarine-cable-map-2016.telegeography.com/) - new age blue map style

[2017 sponsored by Telecom Egypt](http://submarine-cable-map-2017.telegeography.com/) - pinboard style

[2018 sponsored by Telecom Egypt](http://submarine-cable-map-2018.telegeography.com/) - new age paper map style
