#!/bin/bash

clear
echo -e "==============================\n===== Blockchain install =====\n=============================="

# git clone https://github.com/hyperledger/fabric-samples.git /hlf-lab

export GITHUBUSERID="tarsoqueiroz"
mkdir -p $HOME/go/src/github.com/$GITHUBUSERID
cd $HOME/go/src/github.com/$GITHUBUSERID
curl -sSL https://bit.ly/2ysbOFE | bash -s

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
