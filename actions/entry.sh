#!/bin/sh

export HOME=/home/builder

sudo mkdir $INPUT_OUTPUT && sudo chown builder:abuild $INPUT_OUTPUT

abuild-keygen -i -a -n
abuild -r -s $HOME -P $INPUT_OUTPUT


