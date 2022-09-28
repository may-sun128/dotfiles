#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsnc='ls'


# *****  Custom Aliases *****



alias doc='cat ~/SysDocs/readme.txt | less'

# Quick Access 
alias jd="cd ~/JunkDrawer" 
alias f="fish"

# PS1 Modes
alias tmin='PS1="[\W] "'
alias ttime='PS1="[\t][\W] "'
# not working
alias tdef='PS1=[\u\h \W]\$ '
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

# PS1 Default Config
PS1=''

# Load Spotify with Adblock
alias spot='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'

# Make Assembly Stuff
alias acomp='nasm -f bin' 
alias arun='qemu-system-x86_64'


# ***** Custom Path Envs ******



# Custom Binaries
PATH=~/.cbin:$PATH

# Custom Binaries -- Recursive 
# this is slow as shit on an HD 
for d in /home/mholmes/.cbin/*/; do PATH+=":$d"
done

# Golang
PATH=/usr/local/go/bin:$PATH 

#ARU
#Sublime -- might not be working; running `subl` launches but not `sublime_text` 
PATH=/home/mholmes/AUR/sublime-text-4/src/sublime_text/sublime_text:$PATH

## ***** Dotfiles ******

alias config='/usr/bin/git --git-dir=/home/mholmes/dotfiles/ --work-tree=/home/mholmes'
. "$HOME/.cargo/env"

# Enter Notepad Mode at Start
#/home/mholmes/.cbin/./np
