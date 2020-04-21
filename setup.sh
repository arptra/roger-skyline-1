#!/bin/bash

apt install git
apt install ansible
git clone https://github.com/arptra/roger-skyline-1.git ansible
ansible-playbook -i /home/deb/ansible/hosts /home/deb/ansible/setup.yml --user=deb --extra-vars "ansible_sudo_pass=school21"

