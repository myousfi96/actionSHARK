#!/bin/sh
PLUGIN_PATH=$1
cd $PLUGIN_PATH

python $PLUGIN_PATH/setup.py install
