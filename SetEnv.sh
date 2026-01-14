#!/bin/sh

#######################################################################
##                                                                   ##
## Describe Environment Variables for Twelite Packet Sender program. ##
##                                                                   ##
#######################################################################

#
# Specify the setting for serial port id and serial bps.
#
# Serial Port Id
#   Please set the usb port description or physical device id to SERIAL_PORT_ID.
#   If the value of this is empty or "ttyUSB0", the "ttyUSB0" usb device will select.
#   If the value of this is others, program will search for a USB port with that value.
#   Then it will not be found, the program will be shutdown.
#   Default value is "ttyUSB0".
#
# Serial Bps
#   Default value for SERIAL_BPS is "115200".
#
#echo Test >> /tmp/aaa.log
SERIAL_PORT_ID=ttyUSB0
SERIAL_BPS=115200

#
# Specify the Path setting for Java Home and Jar file.
#

JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
JAR_NAME=/opt/twelite-packet-sender/twelite-packet-sender-2.3.2.jar

#
# Specify the API URL and PORT Number of the target for packet data send.

ALERT_URL=https://receive-pub.ixacs.jp/packet-analyzer/api/packet/receiverAlert
API_URL=https://receive-pub.ixacs.jp/packet-analyzer/api/packet/receive
PORT_NUM=80

#
# Specify the protocol of packet send.
#s

SENDER_TYPE=rest

#
# Specify the environment.
#

ENV_TYPE=production

#
# Specify the log level.
#

# LOG_LEVEL=DEBUG

LOG_DIR=/opt/twelite-packet-sender/log
CSV_DIR=/opt/twelite-packet-sender/csv
RECEIVER_INFO_DIR=/opt/twelite-packet-sender

#
# Specify Alert threshold milliseconds.
#

ALERT_TH_MS=600000


#
# Specify Reboot Command Path.
#

REBOOT_FILE_PATH=/opt/twelite-packet-sender/reboot.sh

#
# Specify the flag for new or old twelite monostick
# Set "true" when using old twelite monostick (Default is "false")
#

REPLY_SEND=true
