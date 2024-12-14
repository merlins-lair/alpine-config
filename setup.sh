#!/usr/bin/env bash

echo "Enabling Community Repository..."
sed -i 's/^#https://dl-cdn.alpinelinux.org/alpine/v3.18/community/https://dl-cdn.alpinelinux.org/alpine/v3.18/community/' /etc/apk/repositories

doas apk update
doas apk add docker
doas apk add docker-cli-compose
doas addgroup ${USER} docker

echo "All setups complete."