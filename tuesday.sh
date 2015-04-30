#!/bin/bash
DATE=$(date +%Y%m%d)
# DDD
cd /mnt/xyliss/git/ddd/
sed -i "s/^ENV\s*DDD_updated\(.*\)$/ENV\ DDD_updated\ $DATE/" Dockerfile
git commit -am "Automatically Refreshed on $DATE"
git push
# grep -P '^ENV\s*DDD_updated\s*\d*$' Dockerfile
