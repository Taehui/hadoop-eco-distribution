#!/bin/bash

cd ~
echo -e "\n\n\n" | ssh-keygen -t rsa
cat >> ~/.ssh/authorized_keys < ~/.ssh/id_rsa.pub
