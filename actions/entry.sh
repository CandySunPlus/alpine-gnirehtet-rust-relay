#!/bin/sh

export HOME=/home/builder

sudo mkdir $INPUT_OUTPUT && sudo chown builder:abuild $INPUT_OUTPUT
sudo mkdir src && sudo chown builder:abuild src

abuild-keygen -i -a -n
abuild -r -P $INPUT_OUTPUT


