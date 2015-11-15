# Elasticsearch-2.0
 Installation Elasticsearch 2.0 on Ubuntu 14.04.
 
 Prerequisites
 
 To complete this tutorial, you will require root access to an Ubuntu 14.04 VPS.
 
 The amount of CPU, RAM, and storage that Elasticsearch Server will require depends on the volume of logs that you intend to gather.
 
 For this installation, we will be using a VPS with the following specs for our Elasticsearch Server:

	OS: Ubuntu 14.04
	
	RAM: 4GB
	
	CPU: 2

   #Install Java 8
   
	   Elasticsearch Java, so we will install that now. 
	   We will install a recent version of Oracle Java 8 because that is what Elasticsearch recommends. 
	   It should, however, work fine with OpenJDK, if you decide to go that route.
   
   # Add the Oracle Java PPA to apt:
   
   #Note: If software-properties-common is not installed please run: 
   
		apt-get -y install software-properties-common
																	
		Than add java8 repository:
		
		sudo add-apt-repository -y ppa:webupd8team/java
   
   Update your apt package database:
   
		sudo apt-get update
   
   Install the latest stable version of Oracle Java 8 with this command (and accept the license agreement that pops up):
   
		echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
		echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
		sudo apt-get -y install oracle-java8-installer
   		
  # Install Elasticsearch 2.0
   
   # If git is not installed please run: apt-get -y install git
   
		1. git clone https://github.com/oavioz/Elasticsearch-2.0.git
		
		2. Change directory to folder conten:
			2.1 cd Elasticsearch-2.0
					
		3. Modify File Permissions with chmod
		   3.1 chmod 750 elasticsearch2.0-install.sh Cookbook.sh
			
		4. Running shell script
		   4.1 ./Cookbook.sh
		
	
	# To check if Elasticsearch is up and running please run the command:
	
	 curl 'http://<Public IP>:9200'
	 
	 # you shoud get the result:
	 
	 {
		  "name" : "Flygirl",
		  "cluster_name" : "elasticsearch",
		  "version" : {
			"number" : "2.0.0",
			"build_hash" : "de54438d6af8f9340d50c5c786151783ce7d6be5",
			"build_timestamp" : "2015-10-22T08:09:48Z",
			"build_snapshot" : false,
			"lucene_version" : "5.2.1"
		  },
		  "tagline" : "You Know, for Search"
	}
	
	Good luck :-)
	
	

	 
	 