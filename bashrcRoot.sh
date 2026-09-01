aptinstall () { apt install $@ ; }
alias fullupdate='apt-get -qqy  update '
#
export ME=me
#
alias snaplimit='snap set system refresh.timer=wed,19:00-20:00,21:00-22:00'
if which --all fwupdmgr &> /dev/null  ;  then
true
fi
