#!/bin/bash
cd /workspaces/Competitive-programming-container

pip3 install online-judge-tools
pip3 install git+https://github.com/not522/ac-library-python
pip3 install numpy

sudo npm install -g atcoder-cli

cp -r .devcontainer/config/atcoder-cli-nodejs /home/vscode/.config/

mkdir -p .devcontainer/library
cd .devcontainer/library
git submodule update --recursive

echo "finished setup.sh"