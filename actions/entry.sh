#!/bin/sh

export HOME=/home/builder

cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r

echo "Copy package to output path..."
sudo mkdir $INPUT_OUTPUT
sudo cp $HOME/packages/home/**/*.apk $INPUT_OUTPUT

