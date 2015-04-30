#!/bin/bash
DATE=$(date +%Y%m%d)
# DOCKER_CHEF_SOLO master
cd /mnt/xyliss/git/docker-chef-solo/
git checkout master
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
# grep -P '^ENV\s*DOCKER_CHEF_SOLO_UPDATED\s*\d*$' Dockerfile
