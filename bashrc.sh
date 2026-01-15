
#

#

#


# from https://stackoverflow.com/a/60443899 ## use llike ::  noisy_command | highlight ERROR WARN
# Adds ANSI colors to matched terms, similar to grep --color but without
# filtering unmatched lines. Example:
#   noisy_command | highlight ERROR INFO
#
# Each argument is passed into sed as a matching pattern and matches are
# colored. Multiple arguments will use separate colors.
#
# Inspired by https://stackoverflow.com/a/25357856 , https://github.com/dimo414/util.gem/commit/0289f743
highlight() {  ##  uname -n | highlight tek 2
  # color cycles from 0-5, (shifted 31-36), i.e. r,g,y,b,m,c
  local color=0 patterns=()
  for term in "$@"; do
    patterns+=("$(printf 's|%s|\e[%sm\\0\e[0m|g' "${term//|/\\|}" "$(( color+31 ))")")
    color=$(( (color+1) % 6 ))
  done
  sed -f <(printf '%s\n' "${patterns[@]}")
} 
#

#

#

#

#

#

#
