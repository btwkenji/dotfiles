#!/bin/bash

BRIGHTNESS=$(brightnessctl get)
MAX_BRIGHTNESS=$(brightnessctl max)

PERCENT=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

notify-send "Brightness" "Current brightness: ${PERCENT}%"
