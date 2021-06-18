#!/bin/sh

export HOME=/home/builder

cd $HOME && mkdir -p packages/home
cp -r "${GITHUB_WORKSPACE}"/* .

abuild-keygen -i -a -n
abuild -r

echo "Copy package to output path ${INPUT_OUTPUT}"
sudo mkdir $INPUT_OUTPUT
sudo cp $HOME/packages/home/**/*.apk $INPUT_OUTPUT

