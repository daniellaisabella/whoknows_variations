#!/bin/bash

PYTHON_SCRIPT_PATH=$1

while true;
do
    if ! python3 "$PYTHON_SCRIPT_PATH"; then
        echo "Script crashed with exit code $?. Restarting..." >&2
        sleep 1
    fi
done