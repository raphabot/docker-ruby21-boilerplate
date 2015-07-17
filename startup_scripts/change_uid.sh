#!/bin/bash
uid=$(ls -ld /home/app/webapp | awk '{print $3}')

if [[ $uid =~ ^[0-9]{,5}$ && $uid -ne 0 ]]; then
        usermod -u $uid app
fi

#gid=$(ls -ld teste | awk '{print $4}')
#echo "$uid $gid teste"
#usermod -u $uid app
#usermod -g $gid stideploy
