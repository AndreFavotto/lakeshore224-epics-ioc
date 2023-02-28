#!/bin/bash

# Exit on error
set -e

. ./parseOPTArgs.sh "$@"

if [ ! $? = 0 ]; then
	echo "Could not parse command-line options" >&2
	exit 1
fi

set +e

if [ "$DEVICE_TYPE" = "tcp" ]; then
	ST_CMD="./stTCP.cmd"
else
	ST_CMD="./stSerial.cmd"
fi

# start IOC
DEVICE="$DEVICE" DEVICE_TYPE="$DEVICE_TYPE" \
IP_ADDR="$IP_ADDR" TCP_PORT="${TCP_PORT}" \
SERIAL_PORT="$SERIAL_PORT" $ST_CMD