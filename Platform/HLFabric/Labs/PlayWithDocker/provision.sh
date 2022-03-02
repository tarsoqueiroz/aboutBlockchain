#!/usr/bin/env bash

# # Updating OS and useful tools install
update_os(){  
  # Set branch, update & upgrade repositories
  apk add -X http://dl-cdn.alpinelinux.org/alpine/v3.14/main -u alpine-keys
  {
    echo "https://sjc.edge.kernel.org/alpine/v3.15/main"
    echo "https://sjc.edge.kernel.org/alpine/v3.15/community"
  } > "/etc/apk/repositories"
  apk update
  apk upgrade

  apk add \
          gcompat \
          nano \
          gpg \
          gpg-agent \
          gnupg \
          ca-certificates
}

# install git
install_git(){
  apk add git
}
# install curl
install_curl(){
  apk add curl
}


# # Installing Docker
install_docker(){
  apk add docker docker-compose
}

# install golang
install_golang(){
  apk add go
  mkdir /root/go
}
# install node
install_node(){
  apk add nodejs npm
}
# install python 2.7
install_python27(){
  apk add --no-cache python2
}

update_os

install_git
install_curl

install_docker

install_golang
install_node
install_python27

touch "/root/bashrc"
{
  echo "alias ll='ls -lah'"
  echo "alias pico='nano'"
  echo "export GOPATH=/root/go"
  echo "export PATH=$PATH:/usr/local/go/bin"
} >> "/root/bashrc"

clear
echo -e "===== Pre-req Tools... =====\n"

echo -e "----- NodeJS and NPM\n"
node -v
npm -v

echo -e "\n----- Golang\n"
go version

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

echo -e "===== Pre-req Tools... =====\n"
echo -e "----- Docker and Docker-compose\n"
docker version

echo -e "\n"
docker-compose -version

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

echo -e "===== Pre-req Tools... =====\n"
echo -e "----- Docker container running (hello-world)"
docker container run --rm hello-world

echo -e "-------------------------\n----- Is it all installed OK? -----\n-------------------------"
echo -e "==============================\n===== Blockchain install =====\n=============================="
echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

clear

mkdir -p $HOME/hlf
cd $HOME/hlf
curl -sSL https://bit.ly/2ysbOFE | bash -s
ls -la

clear 

echo -e "===== Hyperledger Fabric... =====\n"

ls /root/hlf

echo -e "\n" ; read -p "*** Press [ENTER] to continue ***" ; clear

clear 

echo -e "===== Hyperledger Fabric Samples... =====\n"

ls /root/hlf/fabric-samlpes

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
