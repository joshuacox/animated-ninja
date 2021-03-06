#!/bin/bash
DATE=$(date +%Y%m%d)
# DOCKER_CHEF_SOLO wheezy
cd /mnt/xyliss/git/docker-chef-solo/
git checkout wheezy
sed -i "s/^ENV\s*DOCKER_CHEF_SOLO_UPDATED\(.*\)$/ENV\ DOCKER_CHEF_SOLO_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
git checkout master
# grep -P '^ENV\s*DOCKER_CHEF_SOLO_UPDATED\s*\d*$' Dockerfile

# DOCKER_PUPPET
cd /mnt/xyliss/git/docker-puppet/
git checkout master
sed -i "s/^ENV\s*DOCKER_PUPPET_UPDATED\(.*\)$/ENV\ DOCKER_PUPPET_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push

# OCTOSSH
cd /mnt/xyliss/git/octossh/
git checkout master
sed -i "s/^ENV\s*OCTOSSH_UPDATED\(.*\)$/ENV\ OCTOSSH_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
