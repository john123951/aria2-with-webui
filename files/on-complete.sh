#!/bin/sh
#if [ $2 -eq 1 ]; then
#	mv "$3" /download
#fi
echo [$(date)] $2, $3, $1 "<br>" >> /download/_log.html
