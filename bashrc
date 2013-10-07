# for Arch
#
# ~/.bashrc
#

# time style
export TIME_STYLE="+%Y-%m-%d %H:%M:%S"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# alias
alias sudo='sudo '
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pacman='pacman --color=auto'

alias dir='dir -1'
alias ll='ls -lF'
alias la='ls -AF'
alias lla='ls -alF'
alias w3m='w3m -cookie'
alias urxvt='urxvt -bg black -fg gray -fn "xft:SimHei" +sb'
alias date='date +"%F %T"'


# Color
#
# color num
# 0 black
# 1 red
# 2 green
# 3 yello
# 4 blue
# 5 purple
# 6 cyan
# 7 white
#
# style
# 0;3*  regular
# 1;3*  bold
# 4;3*  underline
# 4*    background
# 0;9*  high idtensity
# 1;9*  bold high intensity
# 0;10* high intensity background


# PS for User
PS1='\[\e[1;37m\](^_^)\[\e[m\]\[\e[1;32m\]\w\[\e[m\] \[\e[1;33m\]>\[\e[m\] '
PS2=' \[\e[1;33m\]>\[\e[m\] '

# PS for Root
#PS1='(\[\e[1;31m\]\u\[\e[m\])\[\e[1;37m\]\w\[\e[m\] \$ '
#PS2=' > '


eval `dircolors ~/.colors`
