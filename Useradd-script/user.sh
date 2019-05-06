#!/usr/bin/env bash
 read -p "Please enter a username:" user

useradd $user

read -p "Please enter a  password for $user:" password
echo "passwd" | passwd $user --stdin
