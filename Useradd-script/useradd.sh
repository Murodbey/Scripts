#!/bin/bash
if [ $(id -u) -eq 0 ]; then
NEW_USERS="userslist.txt"
HOME_BASE="/home/"
cat ${NEW_USERS} |
while read USER PASSWORD GROUP
do
pass=$(perl -e 'print crypt($ARGV[0], "password")' $PASSWORD)
egrep "^$USER[0]" /etc/passwd > /dev/null
if [ $? -eq 0 ]; then
echo "User $USER exists!"
exit 1
# else
# useradd -g ${GROUP} -p ${pass} -m -d ${HOME_BASE}${USER} ${USER}
# [ $? -eq 0 ] && echo "User $USER has been added to the system" || echo "Failed adding user $USER!"
# fi
# done
# fi