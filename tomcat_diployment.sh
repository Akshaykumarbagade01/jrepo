#!/bin/bash

#to delete the existing hello world war folder so that fresh commits to the source code can be executed
rm -rf hello-world-war

#We begin the process by cloning hello-world-war folder
git clone https://github.com/Srikanthkittane/hello-world-war
sleep 5

#Get into the hello-world-war folder
cd hello-world-war

#Run the maven package(before running this you need to install java and maven)
mvn package
sleep 5

#copy the war file to webapp in the root directory
sudo cp -R target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/

#Switch to bin folder in root directory to shutdown and start the tomcat
cd /opt/apache-tomcat-10.0.27/bin/

#Shutdown the tomcat
sudo ./shutdown.sh
sleep 15

#Restart the tomcat
sudo ./startup.sh
