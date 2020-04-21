#!/bin/bash

echo -e "Status of webApp.service \n"
sudo systemctl status webApp.service
echo -e "Nginx -t\n"
sudo nginx -t
echo -e "Status of nginx.service\n"
sudo systemctl status nginx.service

