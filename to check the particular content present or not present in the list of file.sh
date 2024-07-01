#!/bin/bash
for fil in y.txt dhanu.txt tj.txt
do
for con in "praveen" "dhanraj" "kiran" "thejaswini" "vinay"
do
col=$(grep $con $fil|wc -l)
if [[ $col -gt 0 ]]
then
lin=$(grep -in $con $fil|cut -d ":" -f1)
echo "$con present in $fil in line number $lin"
else
echo "$con is not present in $fil"
fi
done
echo "=================End of file $fil============================"
done
