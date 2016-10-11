#!/bin/bash
USERNAME=root
HOSTS="agent"
SCRIPT="yum install screen -y"
for HOSTNAME in ${HOSTS} ; do
    ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done
