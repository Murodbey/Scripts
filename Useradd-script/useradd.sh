#!/bin/bash
for i in $( cat userslist.txt ); do useradd $i ;
do echo 'redhat' | passwd --stdin $i;
do echo  "$i ALL=(ALL) NOPASSWD: ALL " >> /etc/sudoers ;
done