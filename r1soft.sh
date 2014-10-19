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
echo "Now you can proceed to step 3 : http://wiki.r1soft.com/display/ServerBackup/Install+Server+Backup+Free+on+CentOS%2C+RHE%2C+and+Fedora#InstallServerBackupFreeonCentOS%2CRHE%2CandFedora-login"







