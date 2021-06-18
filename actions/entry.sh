#!/bin/sh

echo $(ls)

sudo mkdir .abuild

sudo chown builder:abuild .abuild

abuild-keygen -i -a -n

abuild -r
