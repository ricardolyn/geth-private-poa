#!/usr/bin/env ash

function prepareDatadir {
  datadir=$1
  etherbase=$2
  if [ ! -d $datadir/geth ]; then
    echo "----------> A new data directory will be created!"
    geth --datadir $datadir \
         init genesis.json
  fi
}
