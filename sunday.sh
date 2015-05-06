#!/bin/bash
DATE=$(date +%Y%m%d)
# DOCKER_CHEF_SOLO trusty
cd /mnt/xyliss/git/docker-chef-solo/
git checkout trusty
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
git checkout master
# grep -P '^ENV\s*DOCKER_CHEF_SOLO_UPDATED\s*\d*$' Dockerfile

# DOCKER_ARCHLINUX_YAOURT
cd /mnt/xyliss/git/docker-archlinux-yaourt/
git checkout master
sed -i "s/^ENV\s*ARCHLINUX_YAOURT_UPDATED\(.*\)$/ENV\ ARCHLINUX_YAOURT_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
