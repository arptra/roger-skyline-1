#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl restart webApp.service
sudo systemctl restart nginx.service
