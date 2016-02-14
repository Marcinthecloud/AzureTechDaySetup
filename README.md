DataStax Azure Tech Day (Microsoft AMP Trainings)
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

6. Copy and paste the commands in the setup script in the root of this git on one of the nodes.

    >>Hint: `vi setup.sh` then paste the commands and run `chmod +x setup.sh` and finally `./setup.sh`

7. Fork this git (which includes deck and instructions) and make it unique to the class (edit IP's, URL's ETC): https://github.com/Marcinthecloud/DataStaxDay

    >>Note, all nodes now have public IP's so you'll have acces to DevCenter, Spark UI, and Solr UI


You will login with:

>**Username: datastax**

>**Password: C@ssandra**

**To get your public IP's:** You can find them at resources.azure.com under Subscriptions -> SE/SA -> Your group -> Network -> PublicIP

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FMarcintheCloud%2FAzureTechDaySetup%2Fmaster%2Fsingledc%2FmainTemplate.json" target="_blank">
    <img src="http://susankaywyatt.com/wp-content/uploads/2010/10/staples-easy-button.png"/>
</a>



####Coming Soon!

Automated install of data and cores

Spark Notebook!

Automatically provision in Spark + Solr mode (requires a custom template that runs independant of OpsCenter)
