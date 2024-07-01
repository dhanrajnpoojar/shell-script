#!/bin/bash
echo "Enter the directory to be check"
read dir
if [[ -d $dir ]]
then
echo "Directory is present in the server next we need to creating the file under $dir"
echo "Enter the file name to be created under $dir"
read filnm
if [[ -f $dir/$filnm ]]
then
echo "file $dir/$filnm exists"
touch $dir/$filnm
fi
else
echo "Directory doesnt present ,we are creating the directory"
mkdir $dir
if [[ -d $dir ]]
then
echo "Directory $dir got created and we are creating file"
echo "Enter the file to be created"
read fil2
touch $dir/$fil2
fi
fi
