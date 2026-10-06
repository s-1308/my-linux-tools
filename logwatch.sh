#!/bin/bash

LOGFILE="/var/log/syslog"
OUTFILE="alerts.log"

LAST_LINE=$(tail -n 1 $LOGFILE)

if echo "$LAST_LINE" | grep -qi "error\|warning"; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') : $LAST_LINE" >> $OUTFILE
fi
# version 2
# version 3
# version 4
