#!/bin/bash
set -e

if [ ! -f /opt/antidote/etc/setup_ok ]; then
  cd /opt/antidote/etc
  mv vm.args vm.args_backup
  if [ "$SHORT_NAME" = "true" ]; then
    sed "s/-name antidote@127\.0\.0\.1/-sname $NODE_NAME/" vm.args_backup > vm.args
  else
    sed "s/-name antidote@127\.0\.0\.1/-name $NODE_NAME/" vm.args_backup > vm.args
  fi
  touch setup_ok
fi

exec "$@"
