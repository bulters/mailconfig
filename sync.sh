#!/bin/bash

PID=$(/usr/local/bin/pgrep -f offlineimap)

[[ -n "$PID" ]] && kill "$PID"

/usr/local/bin/offlineimap -o -c ~/mailconfig/offlineimaprc -u quiet &>~/offlineimap.log &

exit

