#!/usr/bin/env bash
 if [ “$TRAVIS_PULL_REQUEST” == “false” ]; then
 echo “Not a PR. Skipping surge deployment.”
 exit 0
 fi
 angular build production
 npm i -g surge

 export SURGE_LOGIN=nimesh.ekanayaka7@gmail.com
 # Token of a dummy account
 export SURGE_TOKEN=dbc026a59eba422da5cb65debf37eaf0c332bf09

 export DEPLOY_DOMAIN=https://pr-${TRAVIS_PULL_REQUEST}-intake34foc.surge.sh
 surge --project ./ --domain $DEPLOY_DOMAIN;