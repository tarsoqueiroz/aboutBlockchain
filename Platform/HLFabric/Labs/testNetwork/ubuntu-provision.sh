#!/bin/sh

# update os
update_os(){
    sudo apt update
    # sudo apt upgrade -y
    sudo apt install \
                     gnupg \
                     gnupg-agent \
                     lsb-release \
                     apt-transport-https \
                     ca-certificates \
                     software-properties-common \
                     -y
}

# install git
install_git(){
    sudo apt install git -y
}
# install curl
install_curl(){
    sudo apt install curl -y
}

# install docker
install_docker(){
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y
    sudo newgrp docker
    sudo usermod -aG docker vagrant

    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
}

# install golang
install_golang(){
    wget -O go.tar.gz https://go.dev/dl/go1.17.7.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go.tar.gz
    rm go.tar.gz
}
# install node
install_node(){
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt install nodejs -y
}
# install python 2.7
install_python27(){
    sudo apt install python2.7 -y
}

# # install zsh
# install_zsh(){
#     sudo apt install zsh -y
#     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    
# }

update_os

install_curl
install_git

install_docker

install_golang
install_node
install_python27

# install_zsh

mkdir /home/vagrant/go
chown vagrant:vagrant -R /home/vagrant/go
touch "/home/vagrant/.bashrc"
{
    echo "export GOPATH=/home/vagrant/go"
    echo "export PATH=$PATH:/usr/local/go/bin:/home/vagrant/bin"
} >> "/home/vagrant/.bashrc"
