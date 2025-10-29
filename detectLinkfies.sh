#! /bin/bash -p 
# from https://stackoverflow.com/a/72609654 https://www.shellcheck.net/wiki/SC2096
# better  shebang, without using flags
 #! /bin/bash
# set   -p  Turned on whenever the real and effective user ids do not match.
#           Disables processing of the $ENV file and importing of shell
#           functions.  Turning this option off causes the effective uid and
#           gid to be set to the real uid and gid.
#       -x  Print commands and their arguments as they are executed.
shopt -s lastpipe

declare -A devino_of_file
declare -A count_of_devino
find . -type f -printf '%D.%i-%p\0' \
    |   while IFS= read -r -d '' devino_path; do
            devino=${devino_path%%-*}
            path=${devino_path#*-}
            devino_of_file[$path]=$devino
            count_of_devino[$devino]=$(( ${count_of_devino[$devino]-0}+1 ))
        done

for path in "${!devino_of_file[@]}"; do
    devino=${devino_of_file[$path]}
    (( ${count_of_devino[$devino]} == 1 )) && printf '%s\n' "$path"
done
