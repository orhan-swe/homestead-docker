# to add new site 
## mapping
1. update docker-composer with new port mapping
2. go to homestad-custom/volumes/nginx/sites-available
3. add new site
Whwn you make changes to your docker-compose.yml configuration these changes are not reflected after running restart command.

### Check ports
To check mappings, run this command from the host:
> docker-compose ps

Instead you will have to run build command (may do rebuild)
> docker-compose build

## Now to enable the site:
> ln -s /etc/nginx/sites-available/site-name /etc/nginx/sites-enabled/
> sudo service nginx reload


