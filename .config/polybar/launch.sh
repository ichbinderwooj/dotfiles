#!/bin/bash

killall -q polybar
polybar --config=$HOME/.config/polybar/config.ini bar 2>&1 | tee -a /tmp/polybar.log & disown
