#!/bin/bash
set -e

cd ffi
autoreconf -fiv
$CONFIGURE --disable-shared --disable-docs CFLAGS="$FLAGS" $CROSS_COMPILE_FLAGS
$MAKE install
