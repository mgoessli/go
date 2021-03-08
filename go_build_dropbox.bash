#!/bin/bash
DATUM=`date '+%m%d%y%M%S'`
LOGFILE=/appl/dev/go/log/go_build_dropbox_$DATUM.log
cd /home/markus/Dropbox/go_build
ls *.go | while read file
do
	/appl/dev/go/bin/go_build.bash $file
	mv $file /home/markus/Dropbox/go_src/
done
mv *.go-* /home/markus/Dropbox/public/go/
