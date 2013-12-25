
# For dial monitor setting

#cvt 1920 1080

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode VGA-0 1920x1080_60.00
xrandr --output VGA-0 --pos 1280x0 --mode 1920x1080_60.00 --rotate right --refresh 59.9628\nxrandr --output LVDS --pos 0x0 --mode 1280x800 --refresh 59.9095\nxrandr --output LVDS --primary

