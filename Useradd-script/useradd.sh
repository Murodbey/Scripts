#!/bin/bash
# user account create via scripti file
# 
file=$(cat "/root/Scripts/Useradd-script/userslist.txt")

for i in $file
do
useradd $i
echo "$i ALL=(ALL) NOPASSWD: ALL " >> /etc/sudoers ;
done