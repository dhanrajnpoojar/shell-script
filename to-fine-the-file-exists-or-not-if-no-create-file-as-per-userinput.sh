#!/bin/bash
echo "Enter the full path of file"
read fil
if [[ -f $fil ]]
then
echo "file $fil exists"
else
echo "file $fil doesnt exists"
echo "we need to create the file as per user input"
echo :Enter yes to create the file"
read ucf
if [[ $ucf == "yes" ]]
then
echo "creating the file"
touch $fil
if [[ -f $fil ]]
then
echo "Below are the details of file $fil"
stat $fil
else
echo "File $fil not created post user confirmation"
fi
else
echo "user not given confirmation to create the file $fil"
fi
fi
