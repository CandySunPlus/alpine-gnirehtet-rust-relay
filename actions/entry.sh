#!/bin/sh

mkdir .abuild

chown builder:abuild .abuild

su -c "abuild-keygen -i -a -n; abuild -r" -m builder
