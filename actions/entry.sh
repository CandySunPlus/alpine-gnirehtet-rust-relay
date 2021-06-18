#!/bin/sh

export HOME=/home/builder

cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r

sudo mkdir /github/workspace/release
find $HOME/packages
sudo cp $HOME/packages/**/*.apk /github/workspace/release/
