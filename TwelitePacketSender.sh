#!/bin/sh

DIRNAME=`dirname "$0"`

RUN_CONF="$DIRNAME/SetEnv.sh"

if [ -r "$RUN_CONF" ]; then
    . "$RUN_CONF"
fi

$JAVA_HOME/bin/java -jar $JAR_NAME --server.port=$PORT_NUM
