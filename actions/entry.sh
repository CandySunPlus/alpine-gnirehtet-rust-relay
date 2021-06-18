#!/bin/sh
cd /home/builder
cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r
