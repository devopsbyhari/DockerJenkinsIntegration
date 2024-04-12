FROM tomcat

MAINTAINER author  author@gmail.com

COPY **/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080
CMD ["startup.sh", "run"]
