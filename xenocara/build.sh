#!/bin/sh
export ENV=/usr/xenocara/.kshrc
cd /usr/xenocara
rm -rf /usr/xobj/*
make bootstrap
make obj
make build
