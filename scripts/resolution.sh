# script to change resolution of screen to 1920x1200

cvt 1920 1200 60
xrandr --newmode "1920x1200_60.00"  193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync
xrandr --addmode DisplayPort-0 "1920x1200_60.00"
xrandr --output DisplayPort-0 --mode "1920x1200_60.00"
