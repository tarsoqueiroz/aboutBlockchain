#!/bin/bash

clear
echo -e "==============================\n===== Blockchain remove =====\n=============================="

export GITHUBUSERID="vagrant"
cd $HOME/go/src/github.com/$GITHUBUSERID/
sudo rm * -rf
docker system prune -a -f

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
