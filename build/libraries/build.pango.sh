#!/bin/bash
set -e

cd pango

rm pango/config.h
rm pango/pango-features.h
rm pango/pango-enum-types.c
rm pango/pango-enum-types.h

mkdir __build
cd __build
meson .. --prefix=/usr/local --cross-file ../../../../../meson-cross.txt --default-library=static -Dgtk_doc=false -Dintrospection=false -DCMAKE_C_FLAGS="$FLAGS"
ninja install

if [ -d /usr/local/lib/x86_64-linux-gnu ]; then
  cp /usr/local/lib/x86_64-linux-gnu/*.a /usr/local/lib/
fi
