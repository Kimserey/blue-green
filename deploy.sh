#!/bin/bash -v

set -ue

DEPLOYMENT_ENV=$(curl -s https://staging.notkimsereylam.xyz/deployment_id)

cd dist
scp -qr ./frontend.zip notkl:~
ssh notkl "unzip -o frontend.zip -d frontend"
ssh notkl "sudo rm -rf /var/www/$DEPLOYMENT_ENV/frontend/*"
ssh notkl "sudo mv ~/frontend/* /var/www/$DEPLOYMENT_ENV/frontend"
ssh notkl "rm -f ~/frontend*"