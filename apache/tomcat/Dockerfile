################################################################
##
## PURPOSE:
## customized tomcat server for maven deployments
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## 1. <none>
##
################################################################
FROM tomcat:7-jre7

MAINTAINER "Craig Trim <craigtrim@gmail.com>"

RUN \
  mkdir -p /usr/local/tomcat/conf

ADD \
  settings.xml 		/usr/local/tomcat/conf/

ADD \
  tomcat-users.xml 	/usr/local/tomcat/conf/