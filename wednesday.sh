#!/bin/bash
DATE=$(date +%Y%m%d)
# DOCKER_ANSIBLE
cd /mnt/xyliss/git/docker-ansible/
sed -i "s/^ENV\s*DOCKER_ANSIBLE_UPDATED\(.*\)$/ENV\ DOCKER_ANSIBLE_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
# grep -P '^ENV\s*DOCKER_ANSIBLE_UPDATED\s*\d*$' Dockerfile

# DOCKER_REDMINE
cd /mnt/xyliss/git/docker-redmine/
git checkout master
sed -i "s/^ENV\s*DOCKER_REDMINE_UPDATED\(.*\)$/ENV\ DOCKER_REDMINE_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
git checkout 2.6-stable
