#
# CMake Toolchain file for crosscompiling on ARM.
#
# This can be used when running cmake in the following way:
#  cd build/
#  cmake .. -DCMAKE_TOOLCHAIN_FILE=../cross-arm-android.cmake
#

# user should specify the ndk path and the openssl's include and lib's path
set(MY_NDK_PATH /Users/bbg/Library/Android/ndk)
set(OPENSSL_INCLUDE_DIR /Users/bbg/Workspace/openssl-android/include)
set(OPENSSL_CRYPTO_LIBRARY /Users/bbg/Workspace/openssl-android/libs/armeabi/libcrypto.so)
set(OPENSSL_SSL_LIBRARY /Users/bbg/Workspace/openssl-android/libs/armeabi/libssl.so)

########################################################
# do not modify
########################################################
set(CROSS_PATH ${MY_NDK_PATH}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64)

# Target operating system name.
#set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_ANDROID_API 15)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSROOT ${MY_NDK_PATH}/platforms/android-15/arch-arm)


# Name of C compiler.
set(CMAKE_C_COMPILER "${CROSS_PATH}/bin/arm-linux-androideabi-gcc-4.9")
message("complier path:${CMAKE_C_COMPILER}")
set(CMAKE_CXX_COMPILER "${CROSS_PATH}/bin/arm-linux-androideabi-g++")
set(CMAKE_RANLIB "${CROSS_PATH}/bin/arm-linux-androideabi-ranlib")
set(CMAKE_LINKER "${CROSS_PATH}/bin/arm-linux-androideabi-ld")
set(CMAKE_AR "${CROSS_PATH}/bin/arm-linux-androideabi-ar")
set(CMAKE_MN "${CROSS_PATH}/bin/arm-linux-androideabi-mn")
set(CMAKE_STRIP "${CROSS_PATH}/bin/arm-linux-androideabi-strip")

# Where to look for the target environment. (More paths can be added here)
set(CMAKE_FIND_ROOT_PATH "${CROSS_PATH}")

# Adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment only.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Search headers and libraries in the target environment only.
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY) 
