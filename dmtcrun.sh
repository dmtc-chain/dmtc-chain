#!/bin/sh
if [ ! -d "./data/gdmtc" ]; then
	./bin/gdmtc --datadir ./data/ init ./settings/dmtc.json
fi
if [ "$1" = "--mine" ]; then
./bin/gdmtc --networkid 98 --datadir ./data/ --identity "dmtc" $1 --etherbase $2 console
else
./bin/gdmtc --networkid 98 --datadir ./data/ --identity "dmtc" console
fi
