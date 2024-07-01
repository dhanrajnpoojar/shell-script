#!/bin/bash
echo "Enter the content to be checked"
read con
for i in "/tmp" "/var/tmp/"
do
co=$(grep -l "$con" $i/* 2>/dev/null |wc -l)
if [[ $co > 0 ]]
then
echo "Below are the files contains content  $con in $i path and count of lines are $co"
grep -l "$con" $i/* 2>/dev/null
grep -l "$con" $i/* 2>/dev/null >/tmp/filename_content.txt
for ch in $(cat /tmp/filename_content.txt)
do
co_ofile=$(grep -c "$con" $ch)
echo "File $ch contains content  $con $co_ofile times"
done
else
echo "none of files contaims content $con in $i path and count of files  are $co"
fi
done
