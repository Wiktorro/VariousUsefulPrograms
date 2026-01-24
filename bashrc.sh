
#

#
if which --all repo &> /dev/null  ;  then
synccdqbasic() {  time repo sync -cdq --tags --jobs=20 --retry-fetches 5 $@ ; }

syncgarbagecollector() { synccdqbasic --auto-gc ;  }
synccdq() {  synccdqbasic $@ 2>&1 |  egrep -v '(normalize|Could not read |bad object)' || echostatus "\"sync $( getpath_child $(reporoot) ) with stat fom first elem in pipe ${PIPESTATUS[0]} \"" ; return ${PIPESTATUS[0]} ; } 
## mozna dodac  ' spd-say "sync finished done"'  lub " notify-send  done " jako powiadomienie tekstowe, to samo co przy mteams message   ## wycisza 'error: Could not read <hash>' jako nic nie wnoszacy spa  ## moze dodaj rework na wskazanie danego folderu/projektu   ## rozważ flagę --verbose jesli chcielibysmy slyszec duzo zamiast ograniczac output  ## wiecej o PIPESTATUS pod https://stackoverflow.com/a/6871917 ;ub https://stackoverflow.com/a/46400979
true
fi
#

#

#

#

#

#

#

#
