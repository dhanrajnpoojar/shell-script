#!/bin/bash
for i in "cornd" "vsftpd"
do
col=$(services $i status |grep "running"|wc -l)
if [[ $col -gt 0 ]]
then
echo "Services $i is running"
else
echo "Service $i is not running"
echo "Enter 'yes' to start the service $i"
read se
if [[ $se =~ [yY][eE][sS] ]]
then
echo "User confirmed to start the service $i"
service $i start
cos=$(Service $i status |grep "running"|wc -l")
if [[ $cos -gt o ]]
then
echo "Service $i is started successfully"
else
echo "Service $i is not started due to permission issue or any other"
fi
else
echo "User not confirmed to start the service $i"
fi
fi
done
