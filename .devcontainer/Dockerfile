FROM mcr.microsoft.com/devcontainers/base:ubuntu-20.04 AS base

WORKDIR /library
RUN git clone https://github.com/atcoder/ac-library.git
RUN git clone https://github.com/philip82148/cpp-dump.git

RUN apt-get update && apt-get install -y \
    npm \
    gdb

WORKDIR /workspace

