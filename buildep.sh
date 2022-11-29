#!/bin/bash
rm -rf hello-world-war
git clone https://github.com/kevalohith/hello-world-war.git
cd hello-world-war
mvn package
sudo cp -R taget/hello-world-war-1.0.0.war /opt/apcahe-tomcat-10.0.27/webapps/
sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh
sleep 5
sh /opt/apache-tomcat-10.0.27/bin/startup.sh
