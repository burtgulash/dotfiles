#!/bin/sh -e

IMG=/tmp/screen_locked.png

scrot ${IMG}
mogrify -scale 5% -scale 2000% ${IMG}
#mogrify -blur 0x8 ${IMG}

i3lock -i ${IMG}
lock_pid=$$

# sleep for one minute. If the lock is still locked (pid exists), then turn off
# the screen
sleep 60
if ps -p ${lock_pid} > /dev/null
then
    xset dpms force off
fi
