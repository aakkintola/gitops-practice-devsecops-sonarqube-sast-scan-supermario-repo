# Use an official Tomcat as a base image
FROM tomcat:9.0.14-jre8-alpine

LABEL maintainer="github.com/aakkintola"

# Remove default Tomcat application
RUN rm -ef /usr/local/tomcat/webapps/ROOT/*

# Copy your web application to the Tomcar webapps directory
COPY webapp/ /usr/local/tomcat/webapps/ROOT/

# Change the default shell to bash 
RUN ln -sf /bin/bash /bin/sh

# Expose the defualt Tomcat port
EXPOSE 8080

# Start Tomcat when the container starts
CMD [ "catalina.sh", "run"]
