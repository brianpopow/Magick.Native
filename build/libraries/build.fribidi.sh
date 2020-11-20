#!/bin/bash
set -e

cd fribidi
autoreconf -fiv
chmod +x ./configure
$CONFIGURE --disable-shared --prefix=/usr/local CFLAGS="$FLAGS" $CROSS_COMPILE_FLAGS
$MAKE install
