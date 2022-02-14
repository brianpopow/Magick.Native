#!/bin/bash
set -e

cd tiff
autoreconf -fiv
$CONFIGURE ${CONDITIONAL_DISABLE_SHARED} CFLAGS="$FLAGS" $CROSS_COMPILE_FLAGS
echo '' > version
$MAKE install
