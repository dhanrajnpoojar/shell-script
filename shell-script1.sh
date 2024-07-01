content to be checked in file
#!/bin/bash
echo "Enter the field number"
read fe
echo "enter the content to be checked"
read con
linenumber=0
for con in $(cat file.txt)
do
linenumber=$(($linenumber+1))
field_con=$(echo $con|cut -d ":" -f$fe)
if [[ $field_con == $con ]]
then
echo "$con line number is $linenumber"
fi
done
