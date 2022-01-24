#!/bin/bash

current=`pwd`
mkdir -p /tmp/actionSHARK/
cp -R ./actionshark /tmp/actionSHARK/
cp ./plugin_packaging/* /tmp/actionSHARK/
cp ./setup.py /tmp/actionSHARK/
cp ./main.py /tmp/actionSHARK
cp ./logger_config.json /tmp/actionSHARK
cp ./README.md /tmp/actionSHARK/
cp ./LICENSE /tmp/actionSHARK/
cd /tmp/actionSHARK/


if [ -f "$current/actionSHARK_plugin.tar" ]; then
    rm "$current/actionSHARK_plugin.tar"
fi

tar -cvf "$current/actionSHARK_plugin.tar" --exclude=*.tar --exclude=build_plugin.sh --exclude=*/tests --exclude=*/.env --exclude=*/.vscode --exclude=*/__pycache__ --exclude=*.pyc *