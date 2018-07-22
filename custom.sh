#!/usr/bin/env bash

# the script is run by root so we need to fix home:
HOME=/home/homestead

#lets add some php debug help config:
echo "xdebug.remote_connect_back=0" >> /etc/php/7.1/fpm/conf.d/20-xdebug.ini
echo "xdebug.remote_autostart=1" >> /etc/php/7.1/fpm/conf.d/20-xdebug.ini
echo "xdebug.remote_host=docker.for.win.localhost" >> /etc/php/7.1/fpm/conf.d/20-xdebug.ini

#let get our .vimrc (this is orhan-swe .vimrc settings)
wget -O $HOME/.vimrc https://gist.githubusercontent.com/orhan-swe/d04d38e7d384ffe02eee2e21cc6a59a5/raw/db03ce2a97eb53c5e42ac67698b967d4569b2ac1/.vimrc


#lets also start from within apps folder when we lo
if [ -f $HOME/.bash_aliases ]; then 
	echo "cd /apps/" >> $HOME/.bash_aliases  ## apend to file
else
	echo "cd /apps/" > $HOME/.bash_aliases   ## create new file
fi
