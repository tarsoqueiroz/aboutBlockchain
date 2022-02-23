#!/bin/bash

clear
echo -e "===== Network exec =====\n"

export GITHUBUSERID="tarsoqueiroz"
cd $HOME/go/src/github.com/$GITHUBUSERID/fabric-samples/test-network

./network.sh down

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

./network.sh up

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
