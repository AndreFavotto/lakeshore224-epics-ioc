#!/bin/bash

# Exit on error
set -e

. ./parseOPTArgs.sh "$@"

if [ ! $? = 0 ]; then
	echo "Could not parse command-line options" >&2
	exit 1
fi

set +e

PORT="$PORT" DEVICE="$DEVICE" ./st.cmd