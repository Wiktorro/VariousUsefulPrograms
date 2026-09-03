aptinstall () { apt install $@ ; }
alias fullupdate='apt-get -qqy  update '
#
alias kernelUpgrade='apt-get dist-upgrade --yes '
export ME=me
#
if which --all fwupdmgr &> /dev/null  ;  then
true
fi
if which --all journalctl &> /dev/null  ;  then
true
fi

alias snaplimit='snap set system refresh.timer=wed,19:00-20:00,21:00-22:00'
