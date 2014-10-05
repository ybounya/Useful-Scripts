#!/bin/bash

#Simplistic script for monitoring the IO of a process
#PID is passed as an argument
#========
#author = 'Yann Bounya' 
#date = '05-10-2014'
#copyright = 'Copyright © Yann Bounya' 
#licence = 'GNU Public Licence (GPL) v3'
#https://github.com/ybounya/Useful-Scripts.git
#======


if [ $1 ]; then
# Checking that there is a PID passed as argumnt
	MyPID=$1
fi 

echo Process monitored : $MyPID

while [ 1 ] 
# forever looping in here
do
#iotop tells me what is the io of the process
#awk parses the output
	iotop -b -n 1 -qqq -p $1 | awk '{print ($4/1000),"Mb/s", ($6/1000),"Mb/s"}'
	sleep 1
done 
