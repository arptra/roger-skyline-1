#!/bin/bash
echo "uninstall webApp"
sudo rm /etc/nginx/sites-enabled/webApp
sudo rm /etc/nginx/sites-available/webApp
sudo rm /etc/systemd/system/webApp.service
sudo rm -rf /home/deb/webApp
sudo systemctl daemon-reload
sudo systemctl restart nginx.service
