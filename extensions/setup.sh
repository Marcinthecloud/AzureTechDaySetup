#!/bin/bash

echo "installing needed packages"
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo pip install cassandra-driver

echo "Running data loader script..."
python ../DSESetup/solr_dataloader.py
echo "Creating and indexing Solr cores..."
../DSESetup/create_core.sh
