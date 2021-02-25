#!/bin/bash

echo "Running Script"

NAME="en0"
TCP="tcp"
LENGHT="-c 30"
DATE=$(date +"%d-%m-%y")
LOG="-w traffic.$DATE.log"
FILE="traffic.$DATE.log"

	if tcpdump -D | grep -i "Up, Running, Wireless" ;
	then 
		tcpdump -i $NAME $TCP $LENGHT  $LOG
fi
       if [ -f  "$FILE" ]; echo "This file exists"
        then
                tcpdump -r $FILE
	else
		echo "This file does not exists"
fi
