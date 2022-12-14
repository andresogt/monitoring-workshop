#!/usr/bin/env bash

# Install utilities
yum update -y
yum install epel-release tree curl wget htop git stress -y
yum install -y docker

# Install docker
systemctl enable docker
systemctl start docker

# Install compose
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Test commands
docker-compose --version
docker ps

docker pull xcgd/nginx-vts:stable
docker pull gcr.io/cadvisor/cadvisor