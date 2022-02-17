# K3dFabric - Dockerized Kubernetes Fabric

## Intro - Local environment

```Shell
wget K3DFABRIC.ZIP
unzip K3DPABRIC.ZIP
```

## 00 - Infra

- Create K3d cluster `k3dfabric`

```Shell
mkdir -p workspace
cp -R ./hlf-k8s/00-prerequisites/* ./workspace/
chmod +x ./workspace/scripts/*
k3d cluster create -c ./infra/k3dfabric.yaml 
```

- Verify (optional)

```Shell
k3d cluster list
k3d node list
docker container ps
kubectl cluster-info
kubectl get nodes -o wide

docker container exec k3d-k3dfabric-server-0 ls -la /mnt
docker container exec k3d-k3dfabric-server-0 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-server-0 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-server-1 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-server-2 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-agent-0 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-agent-1 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-agent-2 ls -la /mnt/nfs_share
docker container exec k3d-k3dfabric-agent-2 ls -la /mnt/nfs_share/scripts
```

## 01 - Volumes

```Shell
kubectl apply -f ./hlf-k8s/01-volumes/hlf-01-a-pv.yaml 
kubectl apply -f ./hlf-k8s/01-volumes/hlf-01-b-pvc.yaml 
```

- Verify (optional)

```Shell
kubectl get pv,pvc -o wide
```

## 02 - CA

```Shell
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-a-org1.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-c-org2.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-e-org3.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-g-orderer.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-b-org1-service.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-d-org2-service.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-f-org3-service.yaml 
kubectl apply -f ./hlf-k8s/02-ca/hlf-02-h-orderer-service.yaml 
```

- Verify (optional)

```Shell
kubectl get pods,services -o wide
```

## 03 - Certificates

```Shell
kubectl apply -f ./hlf-k8s/03-certificates/hlf-03-a-job.yaml
```

- Verify (optional)

Look at `organization` directory on `workspace` for 2 new subdirectories:

- `ordererOrgnizations`
- `peerOrganizations`

## 04 - Artifacts

```Shell
kubectl apply -f ./hlf-k8s/04-artifacts/hlf-04-a-job.yaml
```

- Verify (optional)

Look at for two new directories on `workspace`:

- `channel-artifacts`
- `system-genesis-block`

## 05 - Orderer

```Shell
kubectl apply -f ./hlf-k8s/05-orderer
```

- Verify (optional)

```Shell
kubectl get pods -o wide
kubectl get services -o wide
```

## 06 - ConfigMap


```Shell
kubectl apply -f ./hlf-k8s/06-configmap/
```

- Verify (optional)

```Shell
kubectl get configmaps -o wide
kubectl describe configmaps builders-config 
```

## 07 - Peers

```Shell
kubectl apply -f ./hlf-k8s/07-peers/org1
kubectl apply -f ./hlf-k8s/07-peers/org2
kubectl apply -f ./hlf-k8s/07-peers/org3
```

- Verify (optional)

```Shell
watch -n 1 kubectl get deployments -o wide
```

## On Udemy, return to section 07: Channel Operation


## I'm going to Section 11: Hyperledger Explorer Integration


## 12 - Explorer

```Shell
sudo sh -c 'mkdir tmp'
sudo sh -c 'export TMP_PK=$PWD/tmp ; echo $TMP_PK ; cd ./workspace/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore ; cp * $TMP_PK/. ; cd $TMP_PK ; mv * priv_sk ; chmod 777 priv_sk ; mv priv_sk ../workspace/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore/.'
sudo sh -c 'rm -rf tmp'




```



