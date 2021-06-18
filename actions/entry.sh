#!/bin/sh

export HOME=/home/builder

sudo mkdir $INPUT_OUTPUT && sudo chown builder:abuild $INPUT_OUTPUT
cp -r $GITHUB_WORKSPACE/* $HOME/src

abuild-keygen -i -a -n
abuild -r -s $HOME/src -P $INPUT_OUTPUT


