#!/bin/sh
if [ ! -d "./data" ]; then
	 ./bin/gdmtc --datadir ./data/ init ./settings/dmtc.json
fi
if [ "$1" = "--mine" ]; then
	nohup ./bin/gdmtc --networkid 98 --datadir ./data/ --identity "dmtc" $1 --etherbase $2 >> gdmtc.log 2>&1 &
else
	nohup ./bin/gdmtc --networkid 98 --datadir ./data/ --identity "dmtc" >> gdmtc.log 2>&1 &
fi
