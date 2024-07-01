#!/bin/bash
for i in "dhanraj" "pavanraj" "megharaj" "nagaraj"
do
for j in file1 file2
do
grep "$i" $j >/dev/null
if [[ $? -eq 0 ]]
then
echo "Content $i is present in file $j"
else
echo "Content $i is not present inthe file $j"
fi
done
echo "======================================"
done
