#!/bin/sh

set -e
export HOME=/home/builder

main() {
  sudo chown -R builder:abuild .
  sudo mkdir $INPUT_OUTPUT
  sudo chown -R builder:abuild $INPUT_OUTPUT

  abuild-keygen -i -a -n
  exec abuild -r -P $INPUT_OUTPUT
}

main "$@"
