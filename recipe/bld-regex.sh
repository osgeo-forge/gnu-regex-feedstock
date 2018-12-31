#!/bin/bash

set -e
set -x

cd src

./configure --build=x86_64-w64-mingw32
make regex.o

ar cru libregex.a regex.o
ranlib libregex.a
