#!/bin/bash

mkdir -p src/module
mkdir build
mv files src/module
mv .git src/module
#pushd ./src/module
echo "BUILDING"

g++ -Wall src/module/files/BiggestUnInt.cc
g++ -Wall src/module/files/HelloWorld.cpp
g++ -Wall src/module/files/SimpleClass.cc
g++ -Wall src/module/files/HelloMundo.cpp

RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
#popd
