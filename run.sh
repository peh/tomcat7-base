#!/bin/bash

cp /opt/ROOT.war /var/lib/tomcat7/webapps/ROOT.war

service tomcat7 start

# The container will run as long as the script is running, that's why
# we need something long-lived here
exec tail -F /var/log/tomcat7/catalina.out