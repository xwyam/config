case $(uname) in
  'Linux')
    alias ls='ls --color=auto'
    alias dir='dir -1'
    ;;
  'Darwin')
    alias ls='ls -G'
    ;;
  *)
    ;;
esac


alias la='ls -AF'
alias ll='ls -lF'
alias lla='ls -AlF'

alias sudo='sudo '
alias grep='grep --color=auto'
alias pacman='pacman --color=auto'

alias pip='pip3'
alias pypy='pypy3'
alias python='python3'

#alias w3m='w3m -cookie'
#alias minicom="minicom -c on"
#alias sshfs_opt='sudo sshfs -o reconnect,local,allow_other,defer_permissions'
