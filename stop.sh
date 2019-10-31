#!/bin/bash
ps -ef | grep gdmtc | awk '{ print $2 }' | sudo xargs kill -9
