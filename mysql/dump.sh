#!/bin/bash

source ./.env

alias dp="docker compose"
dstr=$(date '+%Y%m%d_%H%M%S')

dp exec mysql mysqldump "-u${MYSQL_USER}" "-p${MYSQL_PASSWORD}" rcache >"${dstr}.dump"

gzip "./${dstr}.dump"
mv "./${dstr}.dump.gz" ./dumps/
