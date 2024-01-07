FROM tomcat:8.0-alpine

MAINTAINER author  author@gmail.com



WORKDIR /usr/local/tomcat

ADD **/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080
CMD ["startup.sh", "run"]
