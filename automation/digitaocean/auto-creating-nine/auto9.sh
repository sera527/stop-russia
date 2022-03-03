#!/bin/bash

snap install doctl
doctl auth init --access-token $API_KEY
../clear.sh
../init.sh 9
