
#

#

#

#

#
# in case of error as https://stackoverflow.com/a/76741707 :: ln -s /usr/share/cmake-3.25 ~/.local/share/ 
alias vs='"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe"' \
&& complete -o dirnames -f  -X '!*.sln' vs  # --ext=txt jak w complete -F _ext_completion --ext=txt mycmd ,  if none matches pattern, give directory names for  deep search, https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion-Builtins.html#index-complete

#

#

#

#

#
