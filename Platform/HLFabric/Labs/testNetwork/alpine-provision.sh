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
  # gnupg-agent \
  # lsb-release \
  # apt-transport-https \
  # ca-certificates \
  # software-properties-common \
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
  addgroup vagrant docker
  rc-update add docker default
  rc-service docker restart

#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#     sudo apt-key fingerprint 0EBFCD88
#     sudo add-apt-repository \
#         "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#         $(lsb_release -cs) \
#         stable"
#     sudo apt-get update
#     sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#     sudo newgrp docker
#     sudo usermod -aG docker vagrant
#     sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#     sudo chmod +x /usr/local/bin/docker-compose
#     sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
}

# install golang
install_golang(){
  apk add go
  mkdir /home/vagrant/go
  chown vagrant:vagrant -R /home/vagrant/go
}
# install node
install_node(){
  apk add nodejs npm
}
# install python 2.7
install_python27(){
  apk add python2
}

update_os

install_git
install_curl

install_docker

install_golang
install_node
install_python27

touch "/home/vagrant/.bashrc"
{
  echo "alias ll='ls -lah'"
  echo "export GOPATH=/home/vagrant/go"
  echo "export PATH=$PATH:/usr/local/go/bin:/home/vagrant/bin"
} >> "/home/vagrant/.profile"
