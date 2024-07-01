#!/bin/bash
co=$(who |wc -l)
if [[ $co -gt 2 ]]
then
echo "Below are the userdetails who are all logged in"
who
else
echo "more or less then 2 users logged in"
fi
