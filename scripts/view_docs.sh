#!/bin/bash

if [ ! -d "../build/docs" ]; then
    echo "Error: docs directory not found. Build the project first."
    exit 1
fi

cd ../build/docs/html || exit

if which xdg-open > /dev/null; then
    xdg-open index.html
elif which open > /dev/null; then
    open index.html
else
    echo "Error: could not detect web browser."
    exit 1
fi
