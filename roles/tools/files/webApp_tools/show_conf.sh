#!/bin/bash
echo -e "Config	of webApp nginx server\n"
sudo cat /etc/nginx/sites-available/webApp
echo -e "Config of webApp.service\n"
sudo cat /etc/systemd/system/webApp.service
