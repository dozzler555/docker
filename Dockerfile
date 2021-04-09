#This is a sample Image 
FROM ubuntu
MAINTAINER demousr@gmail.com
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends git cmake g++

# Cleanup
RUN  apt-get clean && \
  rm -rf /var/lib/apt

RUN apt-get update 
RUN apt-get install sudo -y
RUN sudo -E apt-get clean
RUN apt-get install wget -y
RUN apt-get install nano -y

COPY . .
CMD [“echo”,”Image created”,"/bin/bash/"] 
