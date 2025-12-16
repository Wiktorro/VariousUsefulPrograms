
#

#

#

#

#

#

#

#

#
fbLinkRepair() { ; } # TODO
goworkLinkRepair() { curl -kq "$1" | grep --invert-match -E '<.*>|\{.*\}' ; }
readbabylonbee() { curl -q "$1" | grep '<p>' ; }
#

