FROM mcr.microsoft.com/devcontainers/base:ubuntu AS base

WORKDIR /library
RUN git clone https://github.com/atcoder/ac-library.git
RUN git clone https://github.com/philip82148/cpp-dump.git

WORKDIR /workspaces
RUN apt-get update && apt-get install -y \
    npm \
    gdb

