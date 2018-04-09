#!/bin/bash
set -x

docker run \
	--name mariadb-dwh \
	--env MYSQL_ROOT_PASSWORD=dwhjaspersoftsecretpw \
	--detach \
	--restart unless-stopped \
	--publish 3306:3306 \
	mariadb:10.3

#       	--volume /my/own/datadir:/var/lib/mysql \

echo "Mysql should now be runnig on port 3306"

