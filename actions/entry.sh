#!/bin/sh

su -c "abuild-keygen -i -a -n; abuild -r" -m builder
