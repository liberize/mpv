#!/bin/sh

./bootstrap.py
./waf configure --prefix=/usr/local --enable-libmpv-shared --enable-lua --enable-javascript --enable-lgpl
./waf install
