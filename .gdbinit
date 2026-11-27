# immediately handles prompts like "Quit anyway? (y/n)"
set confirm off
# block auto web searching
set debuginfod enabled off
# dont prompt to continue printing long logs
set pagination off
# hide var memory addresses
set print address off
# Tablice drukuja sie pionowo, kazdy element w nowej linii
set print array on
# 2nd way for arr vertical, indexed display
set print array-indexes on
# RTTI polymorphic analysis
set print object on
# mute LWP lines
set print thread-events off
# Remap build-time prefix /opt/source to the actual workspace location.
# Fixes "No such file or directory" for binaries and sources in coredumps
# built on the build server where SRCROOT=/opt/source.
set substitute-path /opt/source /home/user/proj
