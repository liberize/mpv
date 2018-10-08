#!/bin/sh

MXE_PATH='/Users/liberize/Code/GitHub/mxe'
TARGET=i686-w64-mingw32.static

export PATH="$MXE_PATH/usr/bin:$PATH"

cd "$MXE_PATH"
make MXE_TARGETS=$TARGET gcc libass jpeg pthreads

cd -
./bootstrap.py
DEST_OS=win32 TARGET=$TARGET ./waf configure --prefix="$MXE_PATH/usr/$TARGET" --enable-libmpv-static # --enable-lua --enable-javascript --enable-lgpl
./waf install
