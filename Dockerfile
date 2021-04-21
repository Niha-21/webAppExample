FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/webappExample.war
# Added to test webhook
