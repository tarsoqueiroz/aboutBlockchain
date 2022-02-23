#!/bin/bash

clear
echo -e "==============================\n===== Blockchain install =====\n=============================="

# git clone https://github.com/hyperledger/fabric-samples.git /hlf-lab

cd /hlfabric
sudo rm * -rf
docker system prune -a -f
curl -sSL https://bit.ly/2ysbOFE | bash -s

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
