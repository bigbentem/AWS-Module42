#!/bin/bash
# System update
sudo apt-get update -y

# install required package
sudo apt-get install -y apt-transport-httpsi ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y
apt-get install docker-ce -y
usermod -aG docker ubuntu

# run docker
sudo docker run -d -p 8080:80 -e DBHOST=${DBHOST} -e DATABASE=${DATABASE} -e DBUSER=${DBUSER} -e DBPASSWORD=${DBPASSWORD} d2si/php-simple-app