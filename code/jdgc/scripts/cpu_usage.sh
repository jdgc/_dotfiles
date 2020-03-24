#!/bin/sh

case $BLOCK_BUTTON in
    1) notify-send "$(ps axch -o cmd:15,%cpu--sort=-%cpu | head )" ;; 
esac

sensors | awk '/^temp1:/ {print $2; exit}'

