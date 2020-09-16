#!/usr/bin/env bash

#copy the /usr/bin directory listing to a log file

today=`date +%Y%m%d-%H-%M-%S`
ls /usr/bin -al > log.$today
