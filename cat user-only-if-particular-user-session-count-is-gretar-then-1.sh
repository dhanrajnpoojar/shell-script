# cat user-only-if-particular-user-session-count-is-gretar-then-1.sh
#!/bin/bash
echo "Enter the username"
read usr
cs=$(who|grep $usr |wc -l"
if [[ $cs -gt 1 ]]
then
echo "Below are the session detailsof user $usr"
who |greo $usr
fi
