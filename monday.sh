#!/bin/bash
DATE=$(date +%Y%m%d)

# DDP
cd /mnt/xyliss/git/DDP/
sed -i "s/^ENV\s*DDP_updated\(.*\)$/ENV\ DDP_updated\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
#grep -P '^ENV\s*DDP_updated\s*\d*$' /mnt/xyliss/git/DDP/Dockerfile

# DDD
cd /mnt/xyliss/git/ddd/
sed -i "s/^ENV\s*DDD_updated\(.*\)$/ENV\ DDD_updated\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
# grep -P '^ENV\s*DDD_updated\s*\d*$' Dockerfile

# DOCKER_ANSIBLE
cd /mnt/xyliss/git/docker-ansible/
sed -i "s/^ENV\s*DOCKER_ANSIBLE_UPDATED\(.*\)$/ENV\ DOCKER_ANSIBLE_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
# grep -P '^ENV\s*DOCKER_ANSIBLE_UPDATED\s*\d*$' Dockerfile

# DOCKER_CHEF_SOLO
cd /mnt/xyliss/git/docker-chef-solo/
git checkout master
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git checkout wheezy
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git checkout jessie
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git checkout trusty
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
git checkout master
# grep -P '^ENV\s*DOCKER_CHEF_SOLO_UPDATED\s*\d*$' Dockerfile
