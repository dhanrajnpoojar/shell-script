#!/bin/bash
echo "Enter the input content to be checkrd"
read p
echo "Enter the file name"
read f1
grep "$p" $f1 >/dev/null
if [[ $? -eq 0 ]]
then
echo "Content $p is present inthe $f1"
else
echo "Content $p is not present in the file $f1"
fi
