
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
comvip() { picocom "$@" --quiet --baud 115200 /dev/ttyUSB0 ; }

comvipversion() { comvip "$@"  --initstring  "$(echo -ne 'version\r\n')" ; }
# example from https://man.archlinux.org/man/picocom.1.en :: -t "$(echo -ne 'AAATZ\r\n')" #  --omap spchex pod zmiany znakow, ale szkoda czasu

comvipfastboot() {  comvip --initstring "$(echo -ne 'reset -f\r\n')" ; } # keeps terminal open and reading
fi
#

#

#
