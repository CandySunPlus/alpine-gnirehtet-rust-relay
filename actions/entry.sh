#!/bin/sh

cp -r /github/workspace/* .

abuild-keygen -i -a -n
abuild -r
