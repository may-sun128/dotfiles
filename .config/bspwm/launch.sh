#!/usr/bin/bash

redshift -P -O 2500 &
sh $HOME/mholmes/.cbin/sleepy-automatic.sh & 
firefox &
#cool-retro-term &  
