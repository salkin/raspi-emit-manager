#!/bin/sh

DEVICE=${DEVICE}
socat tcp-l:32000,reuseaddr,fork file:${DEVICE},waitlock=${DEVICE}.lock

