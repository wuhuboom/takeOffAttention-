#!/bin/bash
#pid=`sh run.sh status | grep -E '(\d+)' | awk '{print $6}'`
#echo $pid
#pidd=$(echo $pid | bc)
jstack -l `sh run.sh status | grep -E '(\d+)' | awk '{print $6}'` > jstack_`date +%Y%m%d`.log