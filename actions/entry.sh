#!/bin/sh

set -e
export HOME=/home/builder

main() {

  sudo mkdir $INPUT_OUTPUT
  sudo chown -R builder:abuild $INPUT_OUTPUT
  sudo cp ./niksun.rsa.pub /etc/apk/keys/
  cp -r ./* $BUILD_SRC && cd $BUILD_SRC

  if [ ! -n "$INPUT_KEY" ]; then
    echo "Can not find private key"
    exit 1
  else
    echo "Save package private key to ${PACKAGER_PRIVKEY}"
    echo -e "$INPUT_KEY" > $PACKAGER_PRIVKEY
  fi


  exec abuild -r -P $INPUT_OUTPUT
}

main "$@"
