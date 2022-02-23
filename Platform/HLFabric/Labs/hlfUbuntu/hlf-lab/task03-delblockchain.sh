#!/bin/bash

clear
echo -e "==============================\n===== Blockchain remove =====\n=============================="

cd $HLFPATH
sudo rm * -rf
docker system prune -a -f

echo -e "-------------------------\n----- Is it all OK? -----\n-------------------------"
