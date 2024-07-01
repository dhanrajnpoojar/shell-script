#!/bin/bash
echo "Enter the content to be checked"
read con
for i in "/tmp" "/var/tmp/"
do
co=$(grep -l "$con" $i/* 2>/dev/null |wc -l)
if [[ $co > 0 ]]
then
echo "Below are the files contents $con in $i and count of lines $co"
grep -l "$con" $i/* 2>/dev/null
else
echo "None of file contents $con in $i and count of lines $co"
fi
done
