#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsnc='ls'



# *****  Custom Aliases *****



# Quick Access 
alias jd="cd ~/JunkDrawer" 
alias f="fish"

# PS1 Default Config
PS1=''

# PS1 Modes
alias tmin='PS1="[\W] "'
alias ttime='PS1="[\t][\W] "'
alias tdef='PS1="\u@\h[\w] "'

# hide/show cursor
alias no-cursor='tput civis'
alias show-cursor='tput cnorm'

# Redshift 
alias warm='redshift -P -O 4000'
alias warmer='redshift -P -O 2500'
alias warmest='redshift -P -O 2000'
alias cool='redshift -P -O 6000'

# Volume 
alias vol='alsamixer'

# Shortcuts
alias rmd='rm -rf'
alias x='chmod u+x'
alias lock='systemctl suspend'
alias lsd='ls -d */'
alias lsf='find . -maxdepth 1 -type f'
alias free='free -g'
# for kitty
alias img='kitty +kitten icat' 
alias cpcb='kitty +kitten clipboard' 

# Load Spotify with Adblock
alias spot='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'

# Make Assembly Stuff
alias acomp='nasm -f bin' 
alias arun='qemu-system-x86_64'

# Launch Polybar 
alias pb='. ~/.config/polybar/launch.sh'
alias slp="rtcwake -m mem -a -t $(date +%s -d 'tomorrow 06:00')"

# BSPWM 
alias rename='bspc desktop --rename'
alias workspace='bspc desktop --rename'
alias ws='bspc desktop --rename'
alias wsd='bspc desktop --rename "●"'

# Node 


# System 
alias ll='ls -l'



# ***** Custom Path Envs ******




# Custom Binaries -- Recursive 
# this is slow as shit on an HD 
#for d in /home/mholmes/.scripts/*/; do PATH+="$PATH:$d"; 
#done

# Golang
PATH=/usr/local/go/bin:$PATH 

#ARU
#Sublime -- might not be working; running `subl` launches but not `sublime_text` 
PATH=/home/mholmes/AUR/sublime-text-4/src/sublime_text/sublime_text:$PATH



## ***** Dotfiles ******



alias config='/usr/bin/git --git-dir=/home/mholmes/dotfiles/ --work-tree=/home/mholmes'
. "$HOME/.cargo/env"



# ***** Startup Bash *****



# Enter Notepad Mode at Start
# /home/mholmes/.cbin/./np
# no cursor by deault
# tput civis

