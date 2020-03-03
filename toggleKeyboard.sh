#!/bin/bash

lockfile="/tmp/.toggleKeyboardlock"
id="AT Translated Set 2 keyboard"

if [ -f "$lockfile" ]; then
  echo "enable"
  xinput enable "$id"
  rm $lockfile
else
  echo "disable"
  xinput disable "$id"
  touch $lockfile
fi
