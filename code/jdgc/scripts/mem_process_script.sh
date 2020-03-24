#!/bin/sh

case $BLOCK_BUTTON in
    1) notify-send "$(ps axch -o cmd:15,%mem --sort=-%mem | head | sed -e 's/.\{16\}/&%/g')" ;;
esac    

free -h | awk '/^Mem:/ {print $3 " / " $2}'
