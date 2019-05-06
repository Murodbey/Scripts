#!/usr/bin/env bash
user=jenkins
for i in $user
sudo useradd $i

read -p "Please enter a  password for $i:" password
echo "passwd" | passwd jenkins --stdin
sudo yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins
sudo su - jenkins -s /bin/bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
read -p "Please enter a  password for $i:" password