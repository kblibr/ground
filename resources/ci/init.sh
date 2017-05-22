#!/bin/bash

# start postgres
sudo service postgresql start
sudo service postgresql status
sudo service postgresql restart

# create Postgres db and user
sudo su -c "createdb test" -s /bin/sh postgres
sudo su -c "createuser test -d -s" -s /bin/sh postgres
