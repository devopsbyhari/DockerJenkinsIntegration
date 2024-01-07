FROM tomcat:9.0.84-jdk8-corretto-al2

MAINTAINER author  author@gmail.com



WORKDIR /usr/local/tomcat

COPY **/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080
CMD ["startup.sh", "run"]
