#!/bin/sh

export HOME=/home/builder

cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r

ls $HOME
ls $HOME/packages
sudo mkdir /github/workspace/release
sudo cp $HOME/packages/**/*.apk /github/workspace/release/
