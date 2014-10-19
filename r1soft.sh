#!/bin/bash
cd /etc/yum.repos.d
echo "[r1soft]" >> /etc/yum.repos.d/r1soft.repo 
echo "name=R1Soft Repository Server" >> /etc/yum.repos.d/r1soft.repo 
echo "baseurl=http://repo.r1soft.com/yum-non-enterprise/stable/$basearch/" >> /etc/yum.repos.d/r1soft.repo 
echo "enabled=1" >> /etc/yum.repos.d/r1soft.repo 
echo "gpgcheck=0" >> /etc/yum.repos.d/r1soft.repo 
yum install -y unzip 
yum install -y serverbackup-free 
clear
echo "Enter username for R1Soft WebUI:"
read DESIRED_USERNAME
echo "Enter password for R1Soft WebUI:"
read DESIRED_PASSWORD
serverbackup-setup --user DESIRED_USERNAME --pass DESIRED_PASSWORD 
serverbackup-setup \--http-port 8080 \--https-port 8443 
/etc/init.d/cdp-server restart
clear
echo "WebUI restarted"
echo "IPADDRESS:8080 for http"
echo "IPADDRESS:8443 for https - SSL"
echo "Done!"




