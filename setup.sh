#!/usr/bin/env bash

echo "Enabling Community Repository..."
echo "Enter Root Password."
su -c 'echo "http://dl-cdn.alpinelinux.org/alpine/v3.21/community" >> /etc/apk/repositories'
echo "Enabled. Updating & Installing Docker"

echo "Enter User Password."
doas apk update
doas apk add docker
doas apk add docker-cli-compose
doas rc-update add docker default
doas service docker start
doas addgroup ${USER} docker

echo "All setups complete. Please reboot."