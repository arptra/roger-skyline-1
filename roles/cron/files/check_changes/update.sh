#!/bin/bash

if [ -e /var/log/update_script.log ]
then
echo -e "File exist\n"
else
touch /var/log/update_script.log
echo  -e "File create\n"
fi

date >> /var/log/update_script.log
apt-get update >>  /var/log/update_script.log
apt-get upgrade >> /var/log/update_script.log
echo -e "\n" >> /var/log/update_script.log
