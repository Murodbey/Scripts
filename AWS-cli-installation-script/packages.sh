#!/bin/bash

# Install unzip and epel-release repository
yum install unzip epel-release -y 

# Update the packages
yum update -y

# Install SCL utility
yum install centos-release-scl -y

# Install python 3.6
yum install rh-python36 -y

# Replace the current version of python to 3.6 in the shell
scl enable rh-python36 bash

# Get aws-cli zip file 
curl https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -o /tmp/awscli-bundle.zip

# Unzip the package
unzip /tmp/awscli-bundle.zip

# Install aws-cli 
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws