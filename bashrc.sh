
#

#

#

#

#

#

#

#
declare -rx  BLACK='\033[00;30m' \
 RED='\033[00;31m' \
 GREEN='\033[00;32m' \
 YELLOW='\033[00;33m' \
 BLUE='\033[00;34m' \
 VIOLET='\033[00;35m' \
 CYAN='\033[00;36m' \
 WHITE='\033[00;37m' \
 NC='\033[00m' 2> /dev/null # No Color

# BOLD COLOR TEXT
declare -rx  BBLACK='\033[01;30m' \
 BRED='\033[01;31m' \
 BGREEN='\033[01;32m' \
 BYELLOW='\033[01;33m' \
 BBLUE='\033[01;34m' \
 BVIOLET='\033[01;35m' \
 BCYAN='\033[01;36m' \
 BWHITE='\033[01;37m' 2> /dev/null
# MORE AT https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
 ## moze byloby fajnie by wypisywalo na koniec bashrc, zeby wszsytko bylo bolded ?
printColor() { ## 1 is text, 2 is color

echo -e "$2$1 ${NC}" 
}
echostatus(){ 
local -i retVal=$?  ## local integer, see more at '   declare --help '
  [[  $retVal -eq 0 ]] && \
printColor "$1 EXIT STATUS ${retVal}" "${BYELLOW}" || \
printColor "$1 EXIT STATUS ${retVal}" "${BRED}"
return $retVal
## echo  "$1  EXIT STATUS $?"
}
#

#
