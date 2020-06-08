#!/bin/bash

killall -q polybar

wn
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

ion ~/.config/polybar/config
polybar default &

echo "Polybar launched..."
