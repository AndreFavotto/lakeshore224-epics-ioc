#!/bin/bash

# Check for uninitialized variables
# Exit on error
set -e

usage () {
    echo "Usage:" >&2
    echo "  $1 -p [PORT] -d [DEVICE]" >&2
    echo >&2
    echo " Options:" >&2
    echo "  -p                  Configure lakeshore224 IP port" >&2
    echo "  -d                  Configure value of \$(DEVICE) macro (PV Name)" >&2
}

while getopts 'p:d:' opt; do
    case "$opt" in
        p) 
            PORT="$OPTARG" 
            ;;
        d) 
            DEVICE="$OPTARG" 
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

if [ -z "$PORT" ]; then
   usage $0
   exit
fi

if [ -z "$DEVICE" ]; then
   usage $0
   exit
fi