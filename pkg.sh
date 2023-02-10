#!/bin/bash

# Author : Jupiter
# Date : 02/09/2023
# Description : Installing some packages on a newly built Centos7 server




 echo " installing packages"
 systemctl enable httpd
 yum install epel-release -y
 yum install unzip -y
 yum install net-tools -y
 yum install httpd -y
 systemctl start http
 systemctl enable httpd

echo " packages successfully installed"
