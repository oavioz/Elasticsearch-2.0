#!/bin/bash

 #Installation Elasticsearch 2.0 on Ubuntu 14.04.
 
 #Prerequisites
 
 #Please read  README.MD file
 #To complete this tutorial, you will require root access to an Ubuntu 14.04 VPS.
 
   #Install Java 8
   
	   #Elasticsearch Java, so we will install that now. 
	   #We will install a recent version of Oracle Java 8 because that is what Elasticsearch recommends. 
	   #It should, however, work fine with OpenJDK, if you decide to go that route.
   
   # Add the Oracle Java PPA to apt:
   
			sudo add-apt-repository -y ppa:webupd8team/java
   
   #Update your apt package database:
   
			sudo apt-get update
   
   #Install the latest stable version of Oracle Java 8 with this command (and accept the license agreement that pops up):
   
			sudo apt-get -y install oracle-java8-installer
   
  #Install Elasticsearch 2.0
  #Elasticsearch can be installed with a package manager by adding Elastic's package source list.
    
  #Run the following command to import the Elasticsearch public GPG key into apt:
   
			wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
   
   #If your prompt is just hanging there, it is probably waiting for your user's password (to authorize the sudo command). If this is the case, enter your password.
   
   #Create the Elasticsearch source list:
   
			echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
   
   #Update your apt package database:
   
			sudo apt-get update
   
   #Install Elasticsearch with this command:
   
			sudo apt-get -y install elasticsearch
   
   #Elasticsearch is now installed. Let's edit the configuration:
   
		#Please see on README.MD file
   
	
     #Now start Elasticsearch:
	
			sudo service elasticsearch restart
	
	#Then run the following command to start Elasticsearch on boot up:
	
			sudo update-rc.d elasticsearch defaults 95 10
	
	# To check if Elasticsearch is up and running please run the command:
	
			#curl 'http://<Your Public IP>:9200'
	 
	 # you shoud get the result:
	 
	# {
		#  "name" : "Flygirl",
		#  "cluster_name" : "elasticsearch",
		#  "version" : {
		#	"number" : "2.0.0",
		#	"build_hash" : "de54438d6af8f9340d50c5c786151783ce7d6be5",
		#	"build_timestamp" : "2015-10-22T08:09:48Z",
		#	"build_snapshot" : false,
		#	"lucene_version" : "5.2.1"
		#  },
		 # "tagline" : "You Know, for Search"
	#}
	
