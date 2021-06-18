#!/bin/sh

export HOME=/home/builder

sudo mkdir $INPUT_OUTPUT && sudo chown builder:abuild $INPUT_OUTPUT
cp -r $GITHUB_WORKSPACE/* $HOME
cd $HOME

abuild-keygen -i -a -n
abuild -r -P $INPUT_OUTPUT


