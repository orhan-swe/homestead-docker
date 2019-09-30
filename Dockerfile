#the image below takes ubuntu:16.04
# Dockerfile: https://github.com/shincoder/homestead-docker/blob/master/Dockerfile

FROM shincoder/homestead:php7.3

#CUSTOM:
RUN apt-get update
RUN apt-get install -y mysql-client
ADD custom.sh /custom.sh
RUN chmod +x /*.sh
RUN ./custom.sh

#lets copy our git config, star in the end is a WA for "if exists"
COPY .gitconfig* /home/homestead/
COPY .gitattributes* /home/homestead/

RUN apt-get install screen
RUN apt-get install screen
RUN apt-get install -y openjdk-8-jdk
