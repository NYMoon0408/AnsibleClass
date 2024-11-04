#!/bin/bash

BASEDIR=/home/ansible/ansible/05_vars-includes
cd $BASEDIR

#1) create inventory file
cat << EOF > allhosts
web1
web2
web3
web4
EOF

#2) run playbook
ansible-playbook -i allhosts epel-boxes.yml
