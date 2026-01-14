
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
fi

#

#

#
