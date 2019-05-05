#!/bin/bash
# user account create via scripti file
# /root/Scripts/Useradd-script/
file=userslist.txt
user=$(cat "file")

for i in $user
do
useradd $i
echo "$i ALL=(ALL) NOPASSWD: ALL " >> /etc/sudoers ;
done