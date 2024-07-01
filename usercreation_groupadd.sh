#!/bin/bash
for i in $(cat userlist.txt)
do
cok=$(cat /etc/passwd | grep $i |wc -l)
if [[ $cok > 0 ]]
then
echo "User $i is present in the server"
echo "Next we need add the user to group and check the group is exists"
echo "Enter the group name to be check if its prsent in the server"
read gp
gnc=$(cat /etc/group |grep $gp |wc -l)
if [[ $gnc > 0 ]]
then
pok=$(cat /etc/passwd |grep $gp |wc -l)
if [[ $pok == 0 ]]
then
echo "Group $gp is already is present and now we add to group"
usermod -G $gp $i
groups $i
fi
else
echo "creating group $gp"
groupadd $gp
usermod -G $gp $i
groups $i
fi
echo "user is not present in the server"
echo "We need to create the user $i"
useradd $i
echo "Enter the group name to be check the exists"
read gp
gok=$(cat /etc/group |grep $gp |wc -l)
if [[ $gok > 0 ]]
then
pok=$(cat /etc/passwd |grep $gp |wc -l)
if [[ $pok == 0 ]]
then
echo "Group $gp is already is present and now we add to group"
usermod -G $gp $i
groups $i
else
echo "creating group $gp"
groupadd $gp
usermod -G $gp $i
fi
fi
done
