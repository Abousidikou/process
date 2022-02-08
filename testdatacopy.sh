#!/bin/bash


# Copy from monitor to emes
year=`date -d "yesterday" '+%Y'`
month=`date -d "yesterday" '+%m'`
day=`date -d "yesterday" '+%d'`

rsync -a emery@monitor.uac.bj:/home/emery/ndt/ndt-server/datadir/ndt7/$year/$month/$day/  /home/emes/ndt/ndt-server/datadir/ndt7/$year/$month/$day/
