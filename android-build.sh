#!/bin/sh
mkdir build
cd build
rm -rf *
cmake .. -DCMAKE_TOOLCHAIN_FILE=../cross-arm-android.cmake
make clean
make
