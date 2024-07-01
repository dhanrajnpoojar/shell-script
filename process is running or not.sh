#!/bin/bash
for proc in "firefox" "dict"
do
col=$(ps -eaf |grep $proc |wc -l)
if [[ $col -gt 1 ]]
then
echo "process $proc  is running and below are the process details"
ps -eaf | grep $proc
echo -e "Enter yes to stop the process"
read opt
if [[ $opt == "yes" ]]
then
echo "User confirmed to kill the process"
pkill $proc
col_pos_kill=$(ps -eaf |grep $proc|wc -l)
if [[ $col_pos_kill -eq 1 ]]
then
echo "process $proc got killed  successfully poet user confirmation"
else
echo "process $proc not killed successfully now process need to kill the forcefully based on user confirmation"
read opt1
if [[ $opt1 == "yes" ]]
then
pkill -9 $proc
colw=$(ps -eaf |grep $proc|wc -l)
if [[ $colw -eq 1 ]]
then
echo "process $proc got killed successfully"
else
echo "process $proc not killed"
fi
fi
fi
else
echo "User not confirmed to kill the process $proc"
fi
else
echo "process $proc is not running"
fi
echo "=================================End of details of the process $proc============="
done
