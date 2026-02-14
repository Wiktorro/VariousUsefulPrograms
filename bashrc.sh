

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

#

#
alias historyclear=' history -c ; history '
alias historylast=' history 11 '
alias historyreload=' history -c ; history -r' # clears messy hist from terminal, reads fresh from default histfile
alias historydeletelast=' history -d -1 ' # supported also -d start-end, from X till end like :: -d 144--1
alias historydeletelastprev=' history -d -2 '

#
alias bashedit='nano $HOME/.bashrc '
alias bashreload='source $HOME/.bashrc '
alias historyedit='nano ~/.bash_history '

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

if which --all repo &> /dev/null  ;  then
true
fi
#

#

#

#

#
if which --all picocom &> /dev/null  ;  then
true
fi
#

#
# tool from https://stackoverflow.com/a/25620599 and https://gist.github.com/deryni/8aa8d0164f620a8dcb7e 
tmp=~/worddiff.awk ; [[ -f "${tmp}" ]] || curl -o "${tmp}" "https://gist.githubusercontent.com/deryni/8aa8d0164f620a8dcb7e/raw/06f2eed69a8f9df0e38882a2e6156e4e60bf4a98/worddiff.awk"
#
