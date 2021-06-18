#!/bin/sh
mkdir ~/src
cp -r /github/workspace/* ~/src/
cd ~/src/

abuild-keygen -i -a -n
abuild -r
