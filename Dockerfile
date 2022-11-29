FROM tomcat:9.0
COPY /var/lib/jenkins/workspace/Addressbook-Project/target/addressbook-2.0.war /var/lib/tomcat9/webapps/
CMD ["catalina.sh","run"]
EXPOSE 8086
