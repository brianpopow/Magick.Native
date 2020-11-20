#!/bin/bash
set -e

cd libxml
autoreconf -fiv
$CONFIGURE --with-python=no --enable-static --disable-shared $LIBXML_OPTIONS CFLAGS="$FLAGS" $CROSS_COMPILE_FLAGS
$MAKE install
