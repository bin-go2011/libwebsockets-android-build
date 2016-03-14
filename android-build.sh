#!/bin/sh
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../cross-arm-android.cmake
make
