#!/bin/bash

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

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
