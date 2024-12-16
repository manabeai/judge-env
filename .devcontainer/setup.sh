#!/bin/bash
cd /workspaces

pip3 install online-judge-tools
pip3 install git+https://github.com/not522/ac-library-python
pip3 install numpy

sudo npm install -g atcoder-cli

cp -r .devcontainer/config/atcoder-cli-nodejs /home/vscode/.config/

mkdir -p .devcontainer/library
cd .devcontainer/library

if ! grep -q "^alias ojpy" ~/.bashrc; then
    echo "alias ojpy='oj t -c \"python3 main.py\" -d ./tests'" >> ~/.bashrc
    echo "ojpy alias was added"
fi
if ! grep -q "^alias ojcp" ~/.bashrc; then
    echo "alias ojcp='g++ main.cpp -std=c++23 -DDEBUG -o main.out -I $CPP_ATCODER_LIBRARY -I $CPP_CPP_DUMP && oj t -c "./main.out" -d tests/'" >> ~/.bashrc
    echo "ojcp alias was added"
fi

git submodule update --init

echo "Setup is done!"