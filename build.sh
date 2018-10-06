#!/bin/sh

./bootstrap.py
export PKG_CONFIG_PATH=$(pwd)/../FFmpeg/inst/lib/pkgconfig:$PKG_CONFIG_PATH
./waf configure --prefix=$(pwd)/inst --enable-libmpv-shared # --enable-lua --enable-javascript --enable-lgpl
./waf install
