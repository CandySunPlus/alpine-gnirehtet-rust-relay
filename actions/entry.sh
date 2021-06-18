#!/bin/sh

export HOME=/home/builder

cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r

echo "Copy from container..."
sudo mkdir $GITHUB_WORKSPACE/release
sudo cp $HOME/packages/home/**/*.apk $GITHUB_WORKSPACE/release/

