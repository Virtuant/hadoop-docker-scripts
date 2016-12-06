#!/bin/bash

#Intialize
echo "Initializing Hadoop-Cluster Setup. Please wait..."

apt-get -y update

apt-get install ntp
apt-get install ambari-server
apt-get install ambari-agent
apt-get install ambari-metrics-assembly

ambari-server setup

ambari-server start
ambari-agent start
ambari-metrics-assembly start

service start ntp

echo "Done. Enjoy!"
