FROM centos:centos6

MAINTAINER nigelpoulton@hotmail.com

# Enable EPEL for Node.js

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node...
 
RUN yum install -y npm

#Copy app to /src
 
COPY /src/ /src

WORKDIR /src
# Install app and dependencies into /src

RUN npm install

EXPOSE 8080
 
CMD node ./app.js
