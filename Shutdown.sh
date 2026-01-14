#!/bin/sh

DIRNAME=`dirname "$0"`

RUN_CONF="$DIRNAME/SetEnv.sh"

if [ -r "$RUN_CONF" ]; then
    . "$RUN_CONF"
fi

/usr/bin/curl http://localhost:$PORT_NUM/packet-sender/shutdown
