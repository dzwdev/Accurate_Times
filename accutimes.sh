#!/bin/bash
unset WINEPREFIX
if [ ! -d "$HOME"/.accutimes ] ; then
   mkdir -p "$HOME"/.accutimes
   #prepare the environment here
   cp -r /usr/share/accutimes "$HOME"
   fi
WINEDEBUG=fixme-all wine "$HOME"/accutimes/accu.exe "$@"
