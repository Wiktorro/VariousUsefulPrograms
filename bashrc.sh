
#

#

#

#
declare EDITOR=nano ; 
declare -rx VISUAL=${EDITOR} ED=${EDITOR} HISTFILESIZE=9999  HISTSIZE=9999 HISTCONTROL=ignoreboth:erasedups DOTNET_CLI_TELEMETRY_OUTPUT=1 2> /dev/null  

#

#

#
if which --all docker &> /dev/null ; then
alias docker=' docker --log-level warn ' ## less output by default ## shared hist via ::
alias dockerConfig_edit='  nano ~/.docker/config* ' ## works for ~/.docker/config as well as ~/.docker/config.json
dockerConfig_check() { grep  "$1"  ~/.docker/config* -A 2 ; }  ## also useful " jq . -c ~/.docker/config*  " and "   jq -c '.["auths"]["registry.haleytek.net"]' ~/.docker/config* ", more at https://jqlang.github.io/jq/manual/

alias dockerImg_list_='docker image list '
alias dockerImg_list_IDS='docker image -a -q  '
alias dockerImg_list_Old='docker image list  --filter until=240h'
alias dockerImg_remove_all=' docker ps -a -q | xargs docker rm ; docker images -a -q | xargs docker rmi -f ' ## 
alias dockerImg_remove_afterStopALL='docker stop $(docker ps -a -q) ; docker rm $(docker ps -a -q)'
alias dockerImg_remove_unusedAndDangling='docker image prune -a'
alias dockerImg_remove_unusedAndDangling_silent=' dockerImg_remove_UnusedAndDangling > /dev/null' 
alias dockerImg_clear_='docker system prune ' ##
alias dockerImg_clear_old=' dockerImg_clear_ --filter "until=240h" ' ## tylko starsze niz 10 dni
alias dockerImg_clear_force=' dockerImg_clear_ --all --volumes --force'
## Usage:  docker image prune [OPTIONS]  Remove unused images

fi

#

#

#
