#!/bin/bash
wget -c http://apache.mirror.amaze.com.au/tomcat/tomcat-9/v9.0.0.M11/bin/apache-tomcat-9.0.0.M11.tar.gz
tar xvf apache-tomcat-*.tar.gz
mkdir solr-tomcat
mv apache-tomcat*/* solr-tomcat/
rmdir apache-tomcat*
sed -i "s/ start / run /g" solr-tomcat/bin/startup.sh 
