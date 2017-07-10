#!/bin/sh

sed -i -e s.{{DEVICE}}.${DEVICE}. /etc/ser2net.conf
ser2net -n 
