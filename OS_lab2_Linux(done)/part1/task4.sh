#!/bin/bash
# Task 4

mkfifo mych

ls -R /home/a/"Рабочий стол"/OSLabs/OS_lab2_Linux/part1/ > mych 

#ls -R ~ > mych 

#echo "cat mych" 
#cat mych &
