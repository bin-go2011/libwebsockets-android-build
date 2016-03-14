## helper scripts to make build libwebsockets for android easier
Here is the steps:
* Download libwebsockets for github https://github.com/warmcat/libwebsockets
* Assume that you have built openssl for android:   https://github.com/guardianproject/openssl-android.git
* Copy these scripts into your libwebsockets' directory
* Make a patch to CMakeLists.txt, this patch will make cmake to compile without server support.
  > patch -p1 < cmakelists.patch 
* run android-build.sh
  > ./android-build.sh
