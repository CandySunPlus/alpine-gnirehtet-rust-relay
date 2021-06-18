#!/bin/sh

echo $(ls)

abuild-keygen -i -a -n

abuild -r
