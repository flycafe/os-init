#!/bin/bash

##########################################
# $Name:     hostname.sh
# $Function: Change hostname script
# $Versin:   V1.0
# $Author:   Yin Xi
# $Created:  2013-12-08
##########################################

usage(){
  echo "Usage: ./hostname.sh new_host_name"
  echo "Example: ./hostname.sh testdb"
  exit 1
}

if [[ $# -eq 0 ]]
then
    usage
else
    sed -i.BAK "/HOSTNAME/c\HOSTNAME=$1" /etc/sysconfig/network
    sed -i.BAK "/127.0.0.1/c\127.0.0.1   localhost   $1" /etc/hosts
    hostname $1
    echo "hostname set to : $1"
fi
