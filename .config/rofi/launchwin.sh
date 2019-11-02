#!/bin/sh

bg_color=#2f343f
text_color=#f3f4f5
htext_color=#9575cd

rofi -show window -lines 25 -eh 1 -width 40 -padding 400 -opacity "85" -bw 0 -color-window "$bg_color, $bg_color, $bg_color" -color-normal "$bg_color, $text_color, $bg_color, $bg_color, $htext_color" -font "Source Code Pro 16"
