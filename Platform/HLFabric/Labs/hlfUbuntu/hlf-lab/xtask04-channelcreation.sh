#!/bin/bash

clear
echo -e "===== Channel 'mychannel' creation =====\n"

export GITHUBUSERID="tarsoqueiroz"
cd $HOME/go/src/github.com/$GITHUBUSERID/fabric-samples/test-network
./network.sh createChannel

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

echo -e "===== Channel 'channel1' creation =====\n"
./network.sh createChannel -c channel1

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

echo -e "===== Channel 'channel2' creation =====\n"
./network.sh createChannel -c channel2

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
