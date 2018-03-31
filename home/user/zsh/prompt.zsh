autoload -U colors
colors
#eval `dircolors ~/.colors`

autoload -U promptinit
promptinit
setopt prompt_subst


PL="2"  # 2 line

XB_FACE="(^_^)"

X_FACE="%{$fg_bold[white]%}$XB_FACE%{$reset_color%}"
X_URNM="%{$fg_bold[red]%}%n%{$reset_color%}"
X_MCNM="%{$fg_bold[cyan]%}%M%{$reset_color%}"
X_CLON="%{$fg_bold[white]%}:%{$reset_color%}"
X_PATH="%{$fg_bold[green]%}%~%{$reset_color%}"
X_TIME="%{$fg_no_bold[magenta]%}20%D %*%{$reset_color%}"

if [ `whoami` = 'root' ]
then
  X_NTLN="%{$fg_bold[red]%}==>%{$reset_color%}"
  X_NTMD="%{$fg_bold[red]%}=>%{$reset_color%}"
  X_NTST="%{$fg_bold[red]%}>%{$reset_color%}"
else
  X_NTLN="%{$fg_bold[yellow]%}==>%{$reset_color%}"
  X_NTMD="%{$fg_bold[yellow]%}=>%{$reset_color%}"
  X_NTST="%{$fg_bold[yellow]%}>%{$reset_color%}"
fi


if [[ $PL == "2" ]]; then

  git_info() {
    local gitrev="$(git rev-parse --git-dir 2>/dev/null)"
    if [[ "$gitrev" == "" ]]; then
      echo ""
    else
      local git_cmt="$(git reflog 2>/dev/null | sed -n '1p' | awk '{print $1}')"
      local git_brc="$(git branch 2>/dev/null | grep '^\*' | sed 's/^\*\ //')"
      echo "%{$fg_bold[blue]%}($git_brc:$git_cmt)%{$reset_color%}"
    fi
  }

  mid_space() {
    local len
    (( len = ${COLUMNS} - ${#${(%):-.$XB_FACE %n@%M:%~20%D %*}} ))
    printf " "%.0s {1..$len}
  }

  PROMPT="$X_FACE $X_URNM@$X_MCNM$X_CLON $X_PATH  \$(git_info)
 $X_NTLN "
  PROMPT2="   $X_NTST "
  RPROMPT=$X_TIME

else

  PROMPT="$X_FACE$X_PATH $X_NTMD "
  PROMPT2=" $X_NTST "
  RPROMPT=$X_TIME

fi


