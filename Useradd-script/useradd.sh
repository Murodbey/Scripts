#!/bin/bash
# user account create via scripti file

file=userlist.txt
user=$(cat "file")

for i in $user
do
useradd $i
echo "$i ALL=(ALL) NOPASSWD: ALL " >> /etc/sudoers ;
done