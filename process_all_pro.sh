#!/bin/bash

## Specify ndt7 datadir path
path="/home/emery/ndt/ndt-server/datadir/ndt7" ## Specify ndt7 Path
todayYear=`date +%Y`
todayMonth=`date +%m`
todayDay=`date +%d`
for year in `ls $path`; do
	for  month in `ls $path"/"$year`; do
		for day in `ls $path$"/"$year"/"$month`; do
			if [[ $year"/"$month"/"$day == $todayYear"/"$todayMonth"/"$todayDay ]]
			then
				exit 0
			fi
			./process_pro.sh "report" $year $month $day  $path
		done
	done
done