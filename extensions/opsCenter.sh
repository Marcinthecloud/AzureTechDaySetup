#!/bin/bash

bash installJava.sh

echo "Installing OpsCenter"
echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/datastax.community.list
curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
apt-get update
apt-get -y install opscenter=5.2.4

echo "Starting OpsCenter"
sudo service opscenterd start

echo "Waiting for OpsCenter to start..."
sleep 15

echo "Python script needs sshpass to determine local IPs."
apt-get -y install sshpass

echo "Generating a provision.json file"
python opsCenter.py $1 $2 $3 $4 $5 $6 $7

echo "Provisioning a new cluster using provision.json"
curl --insecure -H "Accept: application/json" -X POST http://127.0.0.1:8888/provision -d @provision.json

echo "Starting demo install..."
cd
wget https://github.com/Marcinthecloud/AzureTechDaySetup/archive/master.zip
sudo apt-get install unzip
unzip master.zip
echo "installing needed packages"
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo pip install cassandra-driver
cd AzureTechDaySetup-master/DSESetup/
echo "Running data loader script..."
python solr_dataloader.py
echo "Creating and indexing Solr cores..."
./create_core.sh
echo "Finished!"
