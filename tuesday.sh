#!/bin/bash
DATE=$(date +%Y%m%d)
# DDD
cd /mnt/xyliss/git/ddd/
sed -i "s/^ENV\s*DDD_updated\(.*\)$/ENV\ DDD_updated\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
# grep -P '^ENV\s*DDD_updated\s*\d*$' Dockerfile

# DOCKER_REDMINE
cd /mnt/xyliss/git/docker-redmine/
sed -i "s/^ENV\s*DOCKER_REDMINE_UPDATED\(.*\)$/ENV\ DOCKER_REDMINE_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
