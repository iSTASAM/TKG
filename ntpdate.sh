#!/bin/sh
/usr/sbin/ntpdate 118.175.67.83 > /opt/twelite-packet-sender/log/ntpdate.log 2>&1
/usr/local/sbin/hwclock --systohc