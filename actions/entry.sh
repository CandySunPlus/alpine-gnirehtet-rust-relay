#!/bin/sh

echo $HOME
export HOME=/home/builder

cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r
