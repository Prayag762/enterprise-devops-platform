#!/bin/bash

apt update -y

apt install -y docker.io git

systemctl enable docker

systemctl start docker

usermod -aG docker ubuntu

chmod 666 /var/run/docker.sock
