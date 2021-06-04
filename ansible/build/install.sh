#!/bin/bash

echo "Baking $1 into the AMI. Please wait."
echo "parameter two is $2"
curl -O "https://releases.hashicorp.com/$1/$2+ent/$1_$2+ent_linux_amd64.zip"   
unzip $1_$2+ent_linux_amd64.zip
mv $1 /usr/bin
rm $1_$2+ent_linux_amd64.zip
