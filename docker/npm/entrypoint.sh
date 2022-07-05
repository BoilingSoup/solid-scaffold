#!/bin/sh

cd /home/node/app

if [ ! "$@" ]; then
  npm --help
  exit
fi

npm $@
chown -R node /home/node/app
