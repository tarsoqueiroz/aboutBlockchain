# The Complete Guide on Hyperledger Fabric v2.x on Kubernetes

## Section 1 - Introduction (day 1)

### RoadMap to the course

### Repository Download Link

> `./resources/hlf-kubernetes.zip`

### Repository Structure

## Section 2 - Kubernetes Cluster Setup

Steps:

- Installing Kubectl
- Installing Kubernetes IDE
- Creating Kubernetes Cluster
- Create NFS Server
- Mounting NFS Drive to Local System
- Adding PV and PVC to Kubernetes Cluster
- Running sample application on kubernetes

It mounted a K3d cluster with 4 nodes (1 server and 3 agents). The `hlf-k3d.yaml` is configuration file for creating the cluster.

Pay attention on `KubeAPI` session configuration. It's important adjust the `hostIP` for remote access by `Lens`. On `options` session and `k3s` subitem, it was added tls `IP` of host machine.

Other important configuration is on `volumes`. The volume specified simulate a NFS volume, and the data were shared by this volume and `PV/PVC` configuration.

## Section 3 - Fabric CA Server

### Moving CA configuration to NFS Server - Prerequisite

### Starting Up Fabric CA Server - Part 1

### Starting Up Fabric CA Server - Part 2

## Section 4 - Generating Certificates and Artifacts

> Kubernetes Jobs: Jobs ensure that one or more pods execute their commands and exit successfully. When all the pods have exited without errors, the Job get completed. When the Job gets deleted, any created pods get deleted as well.

### Generating Certificates For Peers and Orderers

### Generating genesis block and channel transaction

## Section 5 - Starting Ordering services

### Creating Deployment for orderers

### Creating services for Orderers

### Starting up orderers

## Section 6 - Starting Peers services (day 2)

### Prerequisite - Configuration

### Creating Deployment for peers

### Creating Peer Services

### Setting up CLI for all the Peers

### Starting up the Peer Nodes

## Section 7 - Channel operation

### Creating Application Channel

- On `cli-peer0-org1...` shell, run

```sh
ll scripts/
ll channel-artifacts/
./scripts/createAppChannel.sh 
ll channel-artifacts/
peer channel join -b ./channel-artifacts/mychannel.block 
peer channel list
```

### Joining Application Channel

- On `cli-peer0-org2...` and `cli-peer0-org3...` shell, run

```sh
peer channel join -b ./channel-artifacts/mychannel.block 
peer channel list
```

### Updating Anchor Peers

- On `cli-peer0-org1...` shell, run

```sh
./scripts/updateAnchorPeer.sh Org1MSP
```

- On `cli-peer0-org2...` shell, run

```sh
./scripts/updateAnchorPeer.sh Org2MSP
```

- On `cli-peer0-org3...` shell, run

```sh
./scripts/updateAnchorPeer.sh Org3MSP
```


## Section 8 - Chaincode operation

### Introduction to external chaincode

### Packaging chaincode

```s
cd nfs_share/
cd chaincode/basic/packaging/
ll
cat connection.json 
cat metadata.json 
nano connection.json 
# define `address` for `Org1`
# exit saving
tar cfz code.tar.gz connection.json 
tar cfz basic-org1.tgz code.tar.gz metadata.json 
rm code.tar.gz 
nano connection.json 
# change `Org1` for `Org2`
# exit saving
tar cfz code.tar.gz connection.json 
tar cfz basic-org2.tgz code.tar.gz metadata.json 
rm code.tar.gz 
nano connection.json 
# change `Org2` for `Org3`
# exit saving
tar cfz code.tar.gz connection.json 
tar cfz basic-org3.tgz code.tar.gz metadata.json 
rm code.tar.gz 
ll
```

### Installing chaincode

- On `cli-peer0-org{1|2|3}` execute these commands:

```s
alias ll='ls -lah'
cd /opt/gopath/src/github.com/chaincode/basic/packaging/
peer lifecycle chaincode install basic-org3.tgz 
```

- Save in `note.txt` file on root of `nfs_share` the "**Chaincode code package identifier:**" 

```s
## peer--org1
basic:37276bef1df31a7f4f0ddd3633e6321eb536ee330e1a024b58f0ccdf7ef65d52

## peer--org2
basic:7d087bc8127e82b2bbf66c0c6ad4a9b0cd77d33e0980f03cb68e102f9e80f8aa

## peer--org3
basic:d85890ec02c1d746b8a483a7eaf39a9cfe3647809c6238905a208758146ca063
```

### Create Chaincode Deployment

### Creating Chaincode Service and Starting them

- On each `hlf-09-{a|c|d}-org{1|2|3}-chaincode-deployment.yaml`, adjust the value of `CHAINCODE_ID` with value on `note.txt`.

### Approve chaincode

- inside cli containers

```s
## peer--org1
peer lifecycle chaincode approveformyorg --channelID mychannel --name basic --version 1.0 --init-required --package-id basic:37276bef1df31a7f4f0ddd3633e6321eb536ee330e1a024b58f0ccdf7ef65d52 --sequence 1 -o orderer:7050 --tls --cafile $ORDERER_CA

## peer--org2
peer lifecycle chaincode approveformyorg --channelID mychannel --name basic --version 1.0 --init-required --package-id basic:7d087bc8127e82b2bbf66c0c6ad4a9b0cd77d33e0980f03cb68e102f9e80f8aa --sequence 1 -o orderer:7050 --tls --cafile $ORDERER_CA

## peer--org3
peer lifecycle chaincode approveformyorg --channelID mychannel --name basic --version 1.0 --init-required --package-id basic:d85890ec02c1d746b8a483a7eaf39a9cfe3647809c6238905a208758146ca063 --sequence 1 -o orderer:7050 --tls --cafile $ORDERER_CA
```

- verify if OK

```s
peer lifecycle chaincode checkcommitreadiness --channelID mychannel --name basic --version 1.0 --init-required --sequence 1 -o -orderer:7050 --tls --cafile $ORDERER_CA
```

### Commiting chaincode

- run in a cli commands for commit and verify

```s
peer lifecycle chaincode commit -o orderer:7050 --channelID mychannel --name basic --version 1.0 --sequence 1 --init-required --tls true --cafile $ORDERER_CA --peerAddresses peer0-org1:7051 --tlsRootCertFiles /organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt --peerAddresses peer0-org2:7051 --tlsRootCertFiles /organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt --peerAddresses peer0-org3:7051 --tlsRootCertFiles /organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt 

peer lifecycle chaincode querycommitted -C mychannel
```

### Transaction invocation

```s
### InitLedger command
peer chaincode invoke -o orderer:7050 --isInit --tls true --cafile $ORDERER_CA -C mychannel -n basic --peerAddresses peer0-org1:7051 --tlsRootCertFiles /organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt --peerAddresses peer0-org2:7051 --tlsRootCertFiles /organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt --peerAddresses peer0-org3:7051 --tlsRootCertFiles /organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt -c '{"Args":["InitLedger"]}' --waitForEvent

### query command for initial state
peer chaincode query -C mychannel -n basic -c '{"Args":["GetAllAssets"]}'

### invoke command to create a asset
peer chaincode invoke -o orderer:7050 --tls true --cafile $ORDERER_CA -C mychannel -n basic --peerAddresses peer0-org1:7051 --tlsRootCertFiles /organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt --peerAddresses peer0-org2:7051 --tlsRootCertFiles /organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt --peerAddresses peer0-org3:7051 --tlsRootCertFiles /organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt -c '{"Args":["CreateAsset","asset100","red","50","tom","300"]}' --waitForEvent

### query command to version last addition
peer chaincode query -C mychannel -n basic -c '{"Args":["GetAllAssets"]}'
```

### Accessing CouchDB

```s
kubectl port-forward services/peer0-org1 5984:5984 # terminal 1
# on browser access 127.0.0.1:5984/_utils
kubectl port-forward services/peer0-org2 5985:5984 # terminal 2
# on browser access 127.0.0.1:5985/_utils
```

## Section 9 - API server (day 3)

### Registering User - API Server 1

### Transaction and Query - API Server 2

### Creating Connection Profile

### Overriding Fabric CA Default Configuration

### Creating API Server Deployment

### Starting API Server

After deploy, it's important made 2 port forwards

```s
kubectl port-forward services/api 4000 # for api service
kubectl port-forward services/peer0-org1 5984:5984 # for CouchDB 
```

- Try this sequence of API calls

```yaml
Activity:
  method: POST
  url: http://127.0.0.1:4000/register
  body:
    json: |
    {
    "org":"Org1MSP",
    "userId":"tom"
    }

Activity:
  method: POST
  url: http://127.0.0.1:4000/createAsset
  body:
    json: |
    {
      "org":"Org1MSP",
      "userId":"tom",
      "data":{
          "ID":"asset1000",
          "color":"blue",
          "size":10,
          "appraisedValue":500,
          "owner":"tom"
      }
    }

Activity:
  method: POST
  url: http://127.0.0.1:4000/updateAsset
  body:
    json: |
    {
      "org":"Org1MSP",
      "userId":"tom",
      "data":{
          "ID":"asset1000",
          "color":"red",
          "size":11,
          "appraisedValue":510,
          "owner":"tom"
      }
    }

Activity:
  method: GET
  url: http://127.0.0.1:4000/getAllAssets
  queryParameters:
    org: Org1MSP
    userId: tom
```

## Section 10 - Frontend Application

### Project Setup

### Implementing UI functionalities

### Integrating API's and Testing UI Application

### Frontend Application deployment

Deploy `hlf-10-...` on Kubernetes.

## Section 11 - Hyperledger Explorer integration (day 4)

### Understanding Hyperledger Explorer

### Creating Hyperledger Explorer Deployment

- On directory:

`nfs_share/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore`

- Copy private key as a root to following name:

`priv_sk`

- Adjust file security info

```s
chmod 777 priv_sk
```

### Starting Hyperledger Explorer Service

- Proxying the explorer service

```s
kubectl port-forward services/explorer 8080
```

## Section 12 - Setting up Monitoring Service

### Introduction to Prometheus and Grafana

### Creating Monitoring Service

### Starting Monitoring Service

- Starting monitoring services in this sequence:

```s
kubectl apply -f hlf-13-a-grafana-config.yaml 

kubectl apply -f hlf-13-b-prometheus-config.yaml 

kubectl apply -f hlf-13-c-prometheus.yaml 

kubectl apply -f hlf-13-d-grafana.yaml
```

- Proxying the monitoring service

```s
kubectl port-forward services/grafana 3000
```


## Section 13 - Setting up Ingress Controller

### Ingress Setup

- On browser go to 

`https://kubernetes.github.io/ingress-nginx/`

### Domain Setup with Ingress

### Lets Encrypt - SSL Integration using Cert Manager

## That's all folks

___