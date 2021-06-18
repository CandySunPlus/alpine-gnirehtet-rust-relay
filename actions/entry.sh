#!/bin/sh

export HOME=/home/builder

sudo mkdir $INPUT_OUTPUT && sudo chown builder:abuild $INPUT_OUTPUT

abuild-keygen -i -a -n
abuild -r -s $GITHUB_WORKSPACE -P $INPUT_OUTPUT

echo "Copy package to output path ${INPUT_OUTPUT}"
sudo mkdir $INPUT_OUTPUT
sudo cp $HOME/packages/home/**/*.apk $INPUT_OUTPUT

