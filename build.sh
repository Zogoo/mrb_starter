#!/bin/sh

PROJECT_PATH=${PWD}
MRUBY_ROOT=$PROJECT_PATH/mruby
MRUBY_BIN=$MRUBY_ROOT/bin

if [ -d "${MRUBY_ROOT}/build/host/mrbgems" ]; then
  echo "Found mruby build directory"
else
  cd $MRUBY_ROOT && rake MRUBY_CONFIG="${PROJECT_PATH}/build_config.rb"
fi

$MRUBY_ROOT/build/host/bin/mruby $PROJECT_PATH/src/hello.rb
