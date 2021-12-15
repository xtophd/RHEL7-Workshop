#!/bin/bash

## This script is intended to be run:
##     on the control host (ie: workstation)
##     CWD =  ~root/RHEL8-Workshop

myInventory="./config/master-config.yml"

if [ ! -e "${myInventory}" ] ; then
    echo "ERROR: Are you in the right directory? Can not find ${myInventory}" ; exit
    exit
fi
    
case "$1" in
    "all")
        time  ansible-playbook --ask-vault-pass -i ${myInventory} -f 10  ./playbooks/rhel7-workshop.yml
        ;;

    "ansible"     | \
    "firewalld"   | \
    "docker"      | \
    "lvm"         | \
    "nm"          | \
    "openscap"    | \
    "perftune"    | \
    "rear"        | \
    "systemd"     | \
    "virt"        | \
    "webconsole")

        time  ansible-playbook --ask-vault-pass -i ${myInventory} -f 10 --tags $1 ./playbooks/rhel7-workshop.yml
        ;;

    *)
        echo "USAGE: bastion-setup.sh [ all | ansible | fw | docker | lvm | nm | openscap | perftune | rear | systemd | virt | webconsole ]"
        ;;

esac

