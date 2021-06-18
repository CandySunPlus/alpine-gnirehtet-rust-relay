#!/bin/sh

set -e
export HOME=/home/builder

main() {
  SRC=$HOME/src
  ABUILD=$HOME/.abuild

  sudo mkdir $INPUT_OUTPUT
  sudo chown -R builder:abuild $INPUT_OUTPUT

  ["$ID_RSA"] && {
    echo -e "$ID_RSA" > $ABUILD/id_rsa
    export PACKAGE_PRIVKEY=$ABUILD/id_rsa
  }

  mkdir $ABUILD $SRC
  cp -r ./* $SRC && cd $SRC

  exec abuild -r -P $INPUT_OUTPUT
}

main "$@"
