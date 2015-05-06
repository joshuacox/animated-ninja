#!/bin/bash
DATE=$(date +%Y%m%d)

# DDP
cd /mnt/xyliss/git/DDP/
sed -i "s/^ENV\s*DDP_updated\(.*\)$/ENV\ DDP_updated\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
#grep -P '^ENV\s*DDP_updated\s*\d*$' /mnt/xyliss/git/DDP/Dockerfile
