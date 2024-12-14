#!/usr/bin/env bash

echo "Enabling Community Repository..."
su -c 'echo "http://dl-cdn.alpinelinux.org/alpine/v3.21/community" >> /etc/apk/repositories'

doas apk update
doas apk add docker
doas apk add docker-cli-compose
doas service docker start
doas addgroup ${USER} docker

echo "All setups complete."