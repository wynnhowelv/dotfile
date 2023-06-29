#!/bin/bash
layout=$(yabai -m query --spaces --space | jq -re ".type")
left_padding=2
case $layout in
  "bsp")
    layout="stack"
    left_padding=32
    ;;
  "stack")
    layout="bsp"
    left_padding=2
    ;;
  "float")
    exit 0
    ;;
esac
$(yabai -m config left_padding $left_padding)
$(yabai -m space --layout $layout)
