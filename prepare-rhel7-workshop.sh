#!/bin/bash

## This script is intended to be run:
##     on the control host (ie: workstation)
##     CWD =  ~root/RHEL7-Workshop

myInventory="./config/rhel7-workshop"

if [ ! -e "${myInventory}" ] ; then
    echo "ERROR: Are you in the right directory? Can not find ${myInventory}" ; exit
    exit
fi

time ansible-playbook -i ${myInventory} -f 5 ./playbooks/rhel7-prep-workshop.yml
    
