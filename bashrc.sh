
#

#
if which --all repo &> /dev/null  ;  then
true

repomanifestrefresh(){ git -C $(repo --show-toplevel)/.repo/manifests pull ; }
alias repoStash_list='  repo forall --ignore-missing -v -j24 -c  " git stash list | grep . && git  rev-parse  --show-toplevel  ; true " | grep . ' ## will report OK only for having output , so will also print project localisation ## MUST END WITH STATUS OK owr will abort , final aoutput is 0 if found anything
## DO UPGREJDU KOmENDY:  TEMP=$( git stash list ) ; isStringEmpty $TEMP && echo PUSTY
alias repoClear='repo forall --ignore-missing -v -j24 -c " git clean --quiet -fdx  && git reset --hard --quiet HEAD || git  rev-parse  --show-toplevel " ' ## && 
alias repoForallGivenCommand='  repo forall --ignore-missing --verbose -j24 --command '   ## forward and command you want , CONSIDER ADDING AT END 'true' TO AVOID BREAKING ITERATION if using --abort-on-errors
fi
#

#

#

#

#

#

#

#
