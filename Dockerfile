FROM tomcat:9.0-jdk15
LABEL maintainer="lokeshmamidi252@gmail.com"
COPY project1_645.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
