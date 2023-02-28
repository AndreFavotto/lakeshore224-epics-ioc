#!/bin/bash

# Check for uninitialized variables
# Exit on error
set -e

usage () {
    echo "Usage:" >&2
    echo "  $1 -D [DEVICE] -d [DEVICE_TYPE] -i [IP_ADDR (optional)] -t [TCP_PORT (optional)] -s [SERIAL_PORT (optional)] -b [BAUDRATE (optional)] -p [PARITY (optional)]" >&2
    echo >&2
    echo " Options:" >&2
    echo "  -D                  Configure device name (prefix for PV names)" >&2
    echo "  -d                  Configure communication type (serial|tcp), default=tcp" >&2
    echo "  -i                  Optional: Configure lakeshore224 IP address" >&2
    echo "  -t                  Optional: Configure lakeshore224 TCP port" >&2
    echo "  -s                  Optional: Configure lakeshore224 serial port" >&2
}

while getopts 'D:d:i:t:s:' opt; do
    case "$opt" in
        D) 
            DEVICE="$OPTARG" 
            ;;
        d) 
            DEVICE_TYPE="$OPTARG" 
            ;;
        i) 
            IP_ADDR="$OPTARG" 
            ;;
        t) 
            TCP_PORT="$OPTARG" 
            ;;
        s) 
            SERIAL_PORT="$OPTARG" 
            ;;
        \?) 
            echo "Invalid -$OPTARG command option.">&2
            usage $0
            exit 1
            ;;
        :) 
            echo "Missing argument -$OPTARG">&2
            usage $0
            exit 1
            ;;
        *) 
            usage $0
            exit 1
            ;;
    esac
done

if [ "$OPTIND" -le "$#" ]; then
    echo "Invalid argument at index '$OPTIND' does not have a corresponding option." >&2
    usage $0
    exit 1
fi

if [ -z "$DEVICE" ]; then
   usage $0
   exit
fi

if [ -z "$DEVICE_TYPE" ]; then
   usage $0
   exit
fi

if [ "$DEVICE_TYPE" = "serial" ] && [ -z "$SERIAL_PORT" ]; then
   echo "-s [SERIAL_PORT] argument is required for serial communication option." >&2
   usage $0
   exit
fi

if [ "$DEVICE_TYPE" = "tcp" ] && [ -z "$IP_ADDR" ]  && [ -z "$TCP_PORT" ]; then
   echo "-i [IP_ADDR] and -t [TCP_PORT] arguments are required for tcp communication option." >&2
   usage $0
   exit
fi
