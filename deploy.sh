#!/bin/bash -v

set -ue

DEPLOYMENT_ENV=$(curl https://staging.notkimsereylam.xyz/deployment_id)

echo $DEPLOYMENT_ENV

# cd dist
# scp -qr ./frontend.zip notkl:~/
# ssh husky2 "unzip -o frontend.zip -d ~/frontend"
# ssh husky2 "sudo rm -rf /*"
# ssh husky2 "sudo cp -r ~/ek/$APP_NAME/* $APP_DIR"
# ssh husky2 "sudo chown -R www-data:www-data $APP_DIR/*"