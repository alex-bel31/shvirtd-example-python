#!/bin/bash

REPO_URL="https://github.com/alex-bel31/shvirtd-example-python.git"
REPO_NAME=$(basename "$REPO_URL" .git)

sudo apt update -y 
sudo apt install -y git

sudo git clone $REPO_URL /opt/$REPO_NAME
cd /opt/$REPO_NAME

docker compose up -d