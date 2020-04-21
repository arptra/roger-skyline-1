#!/bin/bash
test="/etc/crontab"
if [ -e /home/deb/check_changes/last_modify ]
then
echo -e "File exist\n"
else
stat "$test"| grep Modify >> last_modify
echo  -e "File create\n"
fi
curent_modify=$(stat "$test"| grep Modify)
echo  $curent_modify
last_modify=$(tail -n1 last_modify)
echo $last_modify
if [ "$curent_modify" != "$last_modify" ];then
	echo "File /etc/crontab has been modified after last check" | mail -s "File has been modified" root
	echo $curent_modify >> last_modify
fi
