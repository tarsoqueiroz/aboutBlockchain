#!/bin/bash

clear
echo -e "===== Chaincode exec =====\n"

export GITHUBUSERID="tarsoqueiroz"
cd $HOME/go/src/github.com/$GITHUBUSERID/fabric-samples/test-network

echo -e "\n=== Preparing to interact with Chaincode..."

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051

echo -e "\n"
echo -e "CORE_PEER_TLS_ENABLED:\n  ---> $CORE_PEER_TLS_ENABLED\n"
echo -e "CORE_PEER_LOCALMSPID:\n  ---> $CORE_PEER_LOCALMSPID\n"
echo -e "CORE_PEER_TLS_ROOTCERT_FILE:\n  ---> $CORE_PEER_TLS_ROOTCERT_FILE\n"
echo -e "CORE_PEER_MSPCONFIGPATH:\n  ---> $CORE_PEER_MSPCONFIGPATH\n"
echo -e "CORE_PEER_ADDRESS:\n  ---> $CORE_PEER_ADDRESS\n"

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n\n===== Chaincode deploy =====\n"

./network.sh deployCC -ccn basic -ccp ../asset-transfer-basic/chaincode-go -ccl go

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Preparing to interact with Chaincode II..."

export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config

echo -e "\n"
echo -e "PATH:\n  ---> $PATH\n"
echo -e "FABRIC_CFG_PATH:\n  ---> $FABRIC_CFG_PATH\n"

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Environment for first Organization..."

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051

echo -e "\n"
echo -e "CORE_PEER_TLS_ENABLED:\n  ---> $CORE_PEER_TLS_ENABLED\n"
echo -e "CORE_PEER_LOCALMSPID:\n  ---> $CORE_PEER_LOCALMSPID\n"
echo -e "CORE_PEER_TLS_ROOTCERT_FILE:\n  ---> $CORE_PEER_TLS_ROOTCERT_FILE\n"
echo -e "CORE_PEER_MSPCONFIGPATH:\n  ---> $CORE_PEER_MSPCONFIGPATH\n"
echo -e "CORE_PEER_ADDRESS:\n  ---> $CORE_PEER_ADDRESS\n"

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Ledger initialization..."

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls \
     --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" \
     -C mychannel -n basic --peerAddresses localhost:7051 \
     --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt" \
     --peerAddresses localhost:9051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt" \
     -c '{"function":"InitLedger","Args":[]}'

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Consulting the Ledger..."

peer chaincode query -C mychannel -n basic -c '{"Args":["GetAllAssets"]}'
echo -e "\n"
peer chaincode query -C mychannel -n basic -c '{"Args":["ReadAsset","asset6"]}'

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Writing to the Ledger..."

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls \
  --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" \
  -C mychannel -n basic --peerAddresses localhost:7051 \
  --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt" \
  --peerAddresses localhost:9051 \
  --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt" \
  -c '{"function":"TransferAsset","Args":["asset6","Christopher"]}'

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Changing for second Organization..."

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=localhost:9051

echo -e "\n"
echo -e "CORE_PEER_TLS_ENABLED:\n  ---> $CORE_PEER_TLS_ENABLED\n"
echo -e "CORE_PEER_LOCALMSPID:\n  ---> $CORE_PEER_LOCALMSPID\n"
echo -e "CORE_PEER_TLS_ROOTCERT_FILE:\n  ---> $CORE_PEER_TLS_ROOTCERT_FILE\n"
echo -e "CORE_PEER_MSPCONFIGPATH:\n  ---> $CORE_PEER_MSPCONFIGPATH\n"
echo -e "CORE_PEER_ADDRESS:\n  ---> $CORE_PEER_ADDRESS\n"

echo -e "\n\n" ; read -p "*** Press [ENTER] to continue ***"

echo -e "\n=== Chaincode interactin from second organization..."

peer chaincode query -C mychannel -n basic -c '{"Args":["GetAllAssets"]}'
echo -e "\n"
peer chaincode query -C mychannel -n basic -c '{"Args":["ReadAsset","asset6"]}'

echo -e "-----------------------------\n----- Is Lab is done!!! -----\n-----------------------------"
