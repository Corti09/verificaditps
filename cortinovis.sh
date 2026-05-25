#!/bin/bash

mkdir cortinovis
mkdir cortinovis/verifica
mkdir cortinovis/verifica/log
mkdir cortinovis/backup

mv web.log cortinovis/verifica/log/web.log

cp cortinovis/verifica/log/web.log cortinovis/backup/web.bck

sort cortinovis/verifica/log/web.log > cortinovis/verifica/websort.log

grep " 200" cortinovis/verifica/websort.log > cortinovis/verifica/success.log

grep "192.168.1.10" cortinovis/verifica/websort.log | sort > cortinovis/verifica/log_192.168.1.10.log

head -3 cortinovis/verifica/log/web.log > cortinovis/verifica/primiultimi3.log
tail -3 cortinovis/verifica/log/web.log >> cortinovis/verifica/primiultimi3.log

wc -l cortinovis/verifica/log/web.log cortinovis/verifica/success.log > cortinovis/verifica/conteggi.log
