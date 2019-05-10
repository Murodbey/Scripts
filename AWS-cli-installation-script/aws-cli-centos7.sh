#!/bin/bash
# Get aws-cli zip file 
curl https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -o /tmp/awscli-bundle.zip

# Unzip the package
unzip /tmp/awscli-bundle.zip

# Install aws-cli 
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws