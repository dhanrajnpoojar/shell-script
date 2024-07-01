#!/bin/bash
echo "Enter the file name to be checked"
read fil
for i in "/tmp" "/var" "/var/tmp/"
do
if [[ -f $i/$fil ]]
then
echo "File $file is exists in $i"
else
echo "File $fil doesnt exists in $i"
fi
done
