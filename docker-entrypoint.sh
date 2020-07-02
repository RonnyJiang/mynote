#!/bin/bash

HOME_DIR="/home/ronny"
LEANOTE="/home/ronny/my_site/leanote/bin"
LOGFILE="log_`date +%Y-%m-%dT%H%M`.txt"
cd $HOME_DIR
which mongod
/home/ronny/mongodb-linux/bin/mongod --dbpath /home/ronny/notedata --auth &
cd $LEANOTE
./run.sh 2>&1 | tee $LOGFILE 
