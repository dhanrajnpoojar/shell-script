#!/bin/bash
for i in $(cat /etc/passwd|grep -v"/sbin/nologin")
do
d=$(echo $i | cut -d ":" -f3)
if [[ $d -gt 20000 ]]
then
echo $i |cut -d ":" -f1
fi
done
