#!/bin/sh

set -e
export HOME=/home/builder

main() {

  sudo mkdir $INPUT_OUTPUT
  sudo chown -R builder:abuild $INPUT_OUTPUT
  cp -r ./* $BUILD_SRC && cd $BUILD_SRC

  if [ ! -n "$INPUT_KEY" ]; then
    echo "Can not find private key"
    exit 1
  else
    echo -e "$INPUT_KEY" > $ABUILD/id_rsa
  fi


  exec abuild -r -P $INPUT_OUTPUT
}

main "$@"
