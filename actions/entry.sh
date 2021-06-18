#!/bin/sh

export HOME=/home/builder

cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r

mkdir /github/workspace/release
cp $HOME/packages/**/*.apk /github/workspace/release/
