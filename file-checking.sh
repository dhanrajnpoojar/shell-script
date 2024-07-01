#!/bin/bash
echo "Enter the filename to be check"
read filn
if [[ -f $filn ]]
then
echo "$filn exists in the server"
else
echo "$filn doesn't present in the server"
echo "Next we need to create the file under the same path"
touch $filn
stat $filn
fi
