#!/bin/bash
cd
echo "installing needed packages"
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo pip install cassandra-driver
echo "Running data loader script..."
python AzureTechDaySetup-master/DSE Setup/solr_dataloader.py
echo "Creating and indexing Solr cores..."
AzureTechDaySetup-master/DSE Setup/create_core.sh
