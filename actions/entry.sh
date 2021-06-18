#!/bin/sh

echo $(whoami)

abuild -i -a -n

abuild -r
