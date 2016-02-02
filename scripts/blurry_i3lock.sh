#!/bin/sh -e

IMG=/tmp/screen_locked.png

scrot ${IMGtmp}
mogrify -scale 5% -scale 2000% ${IMG}
#mogrify -blur 0x8 ${IMG}
i3lock -i ${IMG}
sleep 60; pgrep i3lock && xset dpms force off
