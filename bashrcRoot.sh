aptinstall () { apt install $@ ; }
alias fullupdate='apt-get -qqy  update '
#
export ME=me
#
if which --all fwupdmgr &> /dev/null  ;  then
true
fi
