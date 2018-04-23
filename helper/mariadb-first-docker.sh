#!/bin/bash
set -x

docker stop mariadb-dwh
docker rm mariadb-dwh

docker build -t saschascherrer/dwhsql .

docker run \
	--name mariadb-dwh \
	--env MYSQL_ROOT_PASSWORD=root \
	--env MYSQL_DATABASE=database_project \
	--detach \
	--restart unless-stopped \
	--publish 3306:3306 \
	saschascherrer/dwhsql
	
docker exec mariadb-dwh mysql -u root -p root database_project < ./landingAndIntegrationZone.sql

#       	--volume /my/own/datadir:/var/lib/mysql \

echo "Mysql should now be runnig on port 3306"

