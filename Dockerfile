#FROM ubuntu:16.04
FROM shincoder/homestead:php7.1

#CUSTOM:
RUN apt-get update
RUN apt-get install -y mysql-client
ADD custom.sh /custom.sh
RUN chmod +x /*.sh
RUN ./custom.sh

#lets copy our git config, star in the end is a WA for "if exists"
COPY .gitconfig* /home/homestead/
COPY .gitattributes* /home/homestead/

