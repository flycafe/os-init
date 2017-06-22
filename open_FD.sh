#!/bin/bash

# set user level open file limit
echo "*       soft    nofile  655350" >> /etc/security/limits.conf
echo "*       hard    nofile  655350" >> /etc/security/limits.conf
#set user level open process limit, especially for high concurrent mysql
echo "*       soft    nproc   unlimited" >> /etc/security/limits.conf
echo "*       hard    nproc   unlimited" >> /etc/security/limits.conf

ulimit -n 655350

# set minimum reserved memory to resist OOM
echo "vm.min_free_kbytes=1000000" >> /etc/sysctl.conf
