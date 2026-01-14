
#

#

#

#

#

#

#
if which --all picocom &> /dev/null  ;  then
alias historyedit_picocom=" gedit ~/.picocom_history " # maybe different path
alias picocomHKP-USB0=' echo "zamyka sie przez CTRL + A + X" && picocom -b115200 /dev/ttyUSB0' # hkp # 
picocomHKP-USB0sendCommand() {  echo  " ${1} "  |   picocom -q -b115200 /dev/ttyUSB0 ; }
fi
#

#

#
