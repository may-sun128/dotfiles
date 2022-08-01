#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# *****  Custom Aliases *****

alias doc='cat ~/SysDocs/readme.txt | less'

# fish 
alias f="fish"

# PS1 Modes
alias tmin='PS1="[\W] "'
alias ttime='PS1="[\t][\W] "'
alias tdef='[\u@\h \W]\$ '

# Redshift 
alias warm='redshift -P -O 4000'
alias warmer='redshift -P -O 2500'
alias cool='redshift -P -O 6000'

# Volume 
alias vol='alsamixer'

PS1='[\u@\h \W]\$ '

# ***** Custom Path Envs ******

# Custom Binaries
PATH=~/.cbin:$PATH

# Custom Binaries -- Recursive 
for d in /home/mholmes/.cbin/*/; do PATH+=":$d"
done

# Golang
PATH=/usr/local/go/bin:$PATH 
alias config='/usr/bin/git --git-dir=/home/mholmes/dotfiles/ --work-tree=/home/mholmes'
