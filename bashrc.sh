
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
if ! complete -p picocom &> /dev/null; then
tmp=~/picocom_completion.sh
[[ -f ${tmp} ]] || curl --fail --silent --show-error --location -k --anyauth https://raw.githubusercontent.com/npat-efault/picocom/refs/heads/master/bash_completion/picocom --output ${tmp} --write-out '%{http_code}' || echo " failed at ${LINENO} on tmp =${tmp}"  
source ${tmp}
fi
true
fi
#

#

#
