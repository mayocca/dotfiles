#!/bin/bash

menu="$1"

if [ "$menu" = "appmenu" ]; then
    rofi -show drun -theme clean
fi

