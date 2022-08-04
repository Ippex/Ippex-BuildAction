#!/bin/bash

set -e

target="$1"
zero=0;
toolbinary="ippexbuilder"

echo "Ippex.BuildTool"

if bash -c "${toolbinary} -t $target"; then
    # no op
    exit_code=$?
    if [[ $exit_code -eq $zero ]]; then
        echo "Successfully Completed"
    else
        echo "ERROR: running '${toolbinary}', exited with $exit_code"
        exit $exit_code       
    fi
else
    exit_code=$?
    echo "ERROR: running '${toolbinary}', exited with $exit_code"
    exit $exit_code
fi
