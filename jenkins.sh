#!/bin/bash

 # Jenkins installation on Centos7 server
 # Author : Jupiter
 # Date : Feb 4 2023

echo " installing jenkins"

#Step 1: Install Java

sudo yum install java-11-openjdk-devel -y

#Step 2: Enable the Jenkins repository

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

#Step 3: Install the latest stable version of Jenkins

sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins

#Step 4: Adjust the firewall

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

echo "jenkins installation successful"