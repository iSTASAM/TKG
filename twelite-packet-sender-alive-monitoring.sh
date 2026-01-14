#! /bin/bash
# Search for the string inactive and store it in the variable RESULT
RESULT=`systemctl status twelite-packet-sender | grep -o inactive 2>&1`

#If the content of the string variable RESULT is inactive, restart twinite-packet-sender and write a log to packet-sender.log
if [ "inactive" = $RESULT ]; then
    systemctl restart twelite-packet-sender
    echo `date +"%Y"-``date +"%m"-``date +"%d"` `date +"%H":``date +"%M":``date +"%S"` Executed systemctl restart twelite-packet-sender >> /opt/twelite-packet-sender/log/packet-sender.log
else
    : # do nothing
fi