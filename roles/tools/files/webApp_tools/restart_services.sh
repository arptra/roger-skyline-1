#!/bin/bash

echo -e "Daemon-reload\n"
sudo systemctl daemon-reload
echo -e "Restart webApp.service\n"
sudo systemctl restart webApp.service
echo -e "Restart nginx.service\n"
sudo systemctl restart nginx.service
