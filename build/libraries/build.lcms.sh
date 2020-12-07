#!/bin/bash
set -e

cd lcms
autoreconf -fiv
$CONFIGURE --disable-shared --prefix=/usr/local CFLAGS="$FLAGS" $CROSS_COMPILE_FLAGS
$MAKE install
