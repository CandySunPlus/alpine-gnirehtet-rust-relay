#!/bin/sh

cp -r /github/home/* .

abuild-keygen -i -a -n
abuild -r
