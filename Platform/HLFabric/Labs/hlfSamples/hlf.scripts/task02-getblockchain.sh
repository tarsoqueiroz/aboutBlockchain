#!/bin/bash

clear
echo -e "==============================\n===== Blockchain install =====\n=============================="

# git clone https://github.com/hyperledger/fabric-samples.git /hlf-lab


export GITHUBUSERID="vagrant"
cd $HOME/go/
mkdir -p src/github.com/$GITHUBUSERID/
cd $HOME/go/src/github.com/$GITHUBUSERID/
sudo rm * -rf

docker system prune -a -f
curl -sSL https://bit.ly/2ysbOFE | bash -s

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
