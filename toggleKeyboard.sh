#!/bin/bash

lockfile="/tmp/.toggleKeyboardlock"
id=15

if [ -f "$lockfile" ]; then
  echo "enable"
  xinput enable $id
  rm $lockfile
else
  echo "disable"
  xinput disable $id
  touch $lockfile
fi