#!/usr/bin/env bash
set -e

sudo apt-get update
sudo apt-get install -y curl gnupg

curl -fsSL https://pgp.mongodb.com/server-9.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb-server-9.gpg

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-9.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/9.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-9.0.list

sudo apt-get update
sudo apt-get install -y mongodb-mongosh

mongosh --version