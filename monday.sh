#!/bin/bash
DATE=$(date +%Y%m%d)

# DDP
cd /mnt/xyliss/git/DDP/
sed -i "s/^ENV\s*DDP_updated\(.*\)$/ENV\ DDP_updated\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
#grep -P '^ENV\s*DDP_updated\s*\d*$' /mnt/xyliss/git/DDP/Dockerfile

# Ubuntu NGINX
cd /mnt/xyliss/git/ubuntu-nginx/
sed -i "s/^ENV\s*UBUNTU_NGINX_UPDATED\(.*\)$/ENV\ UBUNTU_NGINX_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push

# Ubuntu 
cd /mnt/xyliss/git/docker-ubuntu/
sed -i "s/^ENV\s*DOCKER_UBUNTU_UPDATED\(.*\)$/ENV\ DOCKER_UBUNTU_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push

# DockArmaIII 
cd /mnt/xyliss/git/dockarmaiii/
sed -i "s/^ENV\s*DOCKARMAIII_UPDATED\(.*\)$/ENV\ DOCKARMAIII_UPDATED\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
