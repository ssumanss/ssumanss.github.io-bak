#!/bin/bash
IFS=" x+" read a b c d < <(convert -fuzz 10% image.jpg -format "%@" info:)
convert image.jpg -crop "${a}x+${c}+0" out.jpg