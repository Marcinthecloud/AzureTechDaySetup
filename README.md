DataStax Azure Tech Day
===================
![icon](http://i.imgur.com/FoIOBlt.png)

This is a simple git that'll help SE's get up and running for Microsoft/Azure based events
----------

### Marc's **7** Steps to Success:

1. **For ultimate convenience:** Hit the 'Easy Button'

2. Change the resource group and region you'll deploy in

3. Choose the right number of nodes and instance type (1-2 cores per person)

4. Get the OpsCenter IP from resources.azure.com (see below)

5. Once all nodes have provisioned, ssh into the cluster and restart DSE in Search + Analytics mode

6. Run the setup script in the root of this git.

7. Fork this git and make it unique to the class (edit IP's, URL's ETC): https://github.com/Marcinthecloud/DataStaxDay
    >>Note, all nodes now have public IP's so you'll have acces to DevCenter, Spark UI, and Solr UI

You will login with:

>**Username: datastax**

>**Password: C@ssandra**

**To get your public IP's:** You can find them at resources.azure.com under Subscriptions -> SE/SA -> Your group -> Network -> PublicIP

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FMarcintheCloud%2FAzureTechDaySetup%2Fmaster%2Fsingledc%2FmainTemplate.json" target="_blank">
    <img src="http://susankaywyatt.com/wp-content/uploads/2010/10/staples-easy-button.png"/>
</a>



Logistics
-------------

If you've never used the Azure portal before, contact help desk to get access, then watch Ben Lackey's how-to: https://www.youtube.com/watch?v=tmXdSEMjwCE

It'll be a good idea to get comfortable with the resource manager. It might be a good idea to walk users through it during Microsoft events.
I tend to use the ```DataStax Production``` image.

**To SSH into the cluster:**

```
ssh username@opscenteripaddress
```
>From here, You can ssh to any of the nodes from x.x.x.6 on.

**You should enable search and analytics on all nodes at this point**



Next, you'll want to install the needed applications to get the demo up and running.
>**Note:** Feel free to use your own content, but if any of your content is Python based, you'll need to do this. This does take a while so make sure you give yourself some lead time.

**Do this first:**
```
cd
wget https://github.com/Marcinthecloud/AzureTechDaySetup/archive/master.zip
sudo apt-get install unzip
unzip master.zip
```

To make this easy for you, there's a 'setup.sh' you can run which **DOES EVERYTHING** for you. It contains the following commands.

```
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo pip install cassandra-driver
cd AzureTechDaySetup-master/DSESetup/
python solr_dataloader.py
./create_core.sh
```
