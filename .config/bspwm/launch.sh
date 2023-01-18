#!/usr/bin/bash

# set volume to 20%
amixer set Master 20% &
# set blue light
redshift -P -O 2500 &
# play intro sound
python $HOME/.scripts/play-intro/play-intro.py &
# launch polybar
$HOME/.config/polybar/launch.sh &
# launch alarm/sleep script 
#$HOME/.scripts/sleepy/insomnia.sh &
firefox &
