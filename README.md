You will need to change the password in the following files:
 - `docker/mongodb/Dockerfile`
 - `docker/mongodb/docker-entrypoint-initdb.d/auth.js`

Additionally, you should set your firewall to deny/reject any connections beside 80 or 443. Also, there is a process to setup letsencrypt but I have forgotten it already. I'll get around to adding that.

To run nodebb, do the following:
 - `docker-compose up -d`

Then, you will need to setup nodebb like so:
 - `docker-compose exec server ./nodebb setup`

Make sure that you set "host" for mongodb to be mongodb (that is the hostname of the mongo container within this container).
Once you are done installing, do the following:
 - `docker-compose down && docker-compose up -d`
