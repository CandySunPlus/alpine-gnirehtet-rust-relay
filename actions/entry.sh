#!/bin/sh

echo $(ls)

mkdir .abuild

chown builder:abuild .abuild

su builder

abuild-keygen -i -a -n

abuild -r
