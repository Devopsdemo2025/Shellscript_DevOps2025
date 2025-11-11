#!/bin/bash
#write a script to the following task
#  a. Monday create a temporary files within path /temp
#  b. List all the files which are older than 30 days
#  c. Wednsday copy all the old files to the temporary directory
#  d. Thursday Clean up all the old files
#  e. Friday cretae a new user for newly joined employee.
#  f. Saturday and Sunday print its holiday.
day=`date '+%a'`
case $day in 
	'Mon')  mkdir -p /home/buntu/tmp
		cd /home/buntu/tmp
	       	touch /home/ubuntu/tmp/file10.txt /home/ubuntu/tmp/file20.txt /home/ubuntu/tmp/file30.txt 
		;;
	'Tue') find . -type f -mtime +30 > /home/ubuntu/tmp/olderfiles 
		;;
	'Wed')  mkdir -p /home/ubuntu/tmp/backupoldefiles
		xargs -a /home/ubuntu/tmp/olderfiles cp -t /home/ubuntu/tmp/backupoldfiles 
		;;
	'Thu') xargs -a /home/ubuntu/tmp/olderfiles rm 
		;;
	'Fri') sudo useradd deepu && echo "user deepu is created"
		;;
	'Sat' | 'Sun') echo "it's holiday"
esac
