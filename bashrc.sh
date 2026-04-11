
#

#

#

#

#
# in case of error as https://stackoverflow.com/a/76741707 :: ln -s /usr/share/cmake-3.25 ~/.local/share/ 
alias vs='"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe"' \
&& complete -o dirnames -f  -X '!*.sln' vs  # --ext=txt jak w complete -F _ext_completion --ext=txt mycmd ,  if none matches pattern, give directory names for  deep search, https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion-Builtins.html#index-complete

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#

#
PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\] \t $? '
#
declare EDITOR=nano ; 
declare -rx VISUAL=${EDITOR} ED=${EDITOR} HISTFILESIZE=9999  HISTSIZE=9999 HISTCONTROL=ignoreboth:erasedups DOTNET_CLI_TELEMETRY_OUTPUT=1 2> /dev/null  

#

#

#
if which --all docker &> /dev/null ; then
true;
fi

#

#
stty -ixon ## allows to search in 2 directions whit CTRL+R  - normal CTRL+R to search backward and CTRL+S to search FORWARD - ifa good command was skipped with CTRL+R , see also https://unix.stackexchange.com/questions/394362/whats-the-shortcut-to-delete-a-word-forward-in-a-unix-terminal or https://unix.stackexchange.com/questions/10806/how-to-change-previous-next-word-shortcut-in-bash 
## also write beginning and press PAGEUP / PAGEDOWN to scroll other command with same beginning , file : /etc/inputrc ## good tips at https://unix.stackexchange.com/a/394373
alias historyclear=' history -c ; history '
alias historylast=' history 11 '
alias historyreload=' history -c ; history -r' # clears messy hist from terminal, reads fresh from default histfile
alias historydeletelast=' history -d -1 ' # supported also -d start-end, from X till end like :: -d 144--1
alias historydeletelastprev=' history -d -2 '

#

#

alias cdback='cd "${OLDPWD}" ' ..=" cd .." ...=" cd ../.." ....=" cd ../../.." # mind the "" if path has spaces
#

#
alias bashedit='nano $HOME/.bashrc '
alias bashreload='source $HOME/.bashrc '
alias historyedit='nano ~/.bash_history '

#
alias lah='ls -lhA'
alias lahalt='ls -hAlt' # l - long, print details , t - sort by time , h - human readable, A - almost all, show hidden, r - reverse order, WATCH OUT FOR RISKY TYPO!! linux.die.net/man/8/hal

#

#

#

#
filesort() { sort --unique --output="$1" "$1" ; }

#

titleSet() {
echo -en "\033]0;$1\a"  ### like echo -en "\033]0;New title\a" ## better Use printf, echo isn't portable in the regard.  ,as in https://unix.stackexchange.com/q/70459
} ##{ echo "[ $1 ]" }

# from https://stackoverflow.com/a/60443899 ## use llike ::  noisy_command | highlight ERROR WARN
# Adds ANSI colors to matched terms, similar to grep --color but without
# filtering unmatched lines. Example:
#   noisy_command | highlight ERROR INFO
#
# Each argument is passed into sed as a matching pattern and matches are
# colored. Multiple arguments will use separate colors.
#
# Inspired by https://stackoverflow.com/a/25357856 , https://github.com/dimo414/util.gem/commit/0289f743
highlight() {  ##  uname -n | highlight tek 2
  # color cycles from 0-5, (shifted 31-36), i.e. r,g,y,b,m,c
  local color=0 patterns=()
  for term in "$@"; do
    patterns+=("$(printf 's|%s|\e[%sm\\0\e[0m|g' "${term//|/\\|}" "$(( color+31 ))")")
    color=$(( (color+1) % 6 ))
  done
  sed -f <(printf '%s\n' "${patterns[@]}")
} 
alias grephighlight="grep --color=always -e^ -e"  ## from https://superuser.com/a/1537523   ## use like greph foo bar.txt
#

#

#

#

datepretty() { date +%F_%R ; } # +%y-%b-%d_%R , dont confuse hour with date
#
# adding '=*' to pattern would include '=' if provided to flag (as in --color=always), but rejected now as behavior on windows is problematic , doesnt match as intended # -- necessary fo differ from the patterns , zajete getflags przez /usr/bin/getflags, https://www.cyberciti.biz/faq/grep-regular-expressions/ # also concatenate to 1 line with paste -sd' ' 
readFlags() { grep --only-matching --extended-regexp -- '\B-+[-a-zA-Z0-9]+' "$@" | sort --unique | tr '\n' ' ' ; }
#

#

if which --all repo &> /dev/null  ;  then
true
fi

if which --all rg &> /dev/null  ;  then
true
fi
#

#

#

if which --all gnome-text-editor &> /dev/null  ;  then
gnomeSetPrefs() {
printf \
'<?xml version="1.0" encoding="UTF-8"?>
<mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
  <mime-type type="text/x-ini">
    <glob pattern="*.cfg"/>
  </mime-type>
</mime-info>' > ~/.local/share/mime/packages/cfg-as-ini.xml
update-mime-database ~/.local/share/mime
}
true
complete -F _minimal -W "-h --help --help-all --help-gapplication -i --ignore-session -n --new-window -s --standalone --version" gnome-text-editor
fi
#

if which --all keep-presence &> /dev/null ; then
true
fi
#

#
if which --all pcat &> /dev/null ; then
true
fi

if which --all picocom &> /dev/null  ;  then
true
fi

if which --all python &> /dev/null  ;  then
true
fi
#

#
# tool from https://stackoverflow.com/a/25620599 and https://gist.github.com/deryni/8aa8d0164f620a8dcb7e 
tmp=~/worddiff.awk ; [[ -f "${tmp}" ]] || curl -o "${tmp}" "https://gist.githubusercontent.com/deryni/8aa8d0164f620a8dcb7e/raw/06f2eed69a8f9df0e38882a2e6156e4e60bf4a98/worddiff.awk"
#
