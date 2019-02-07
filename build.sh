#!/bin/bash

mkdir -p src/module
mkdir build
mv files src/module
mv .git src/module
pushd ./src/module
echo "BUILDING"

g++ -Wall -o ../../build/BiggestUnInt files/BiggestUnInt.cc
g++ -Wall -o ../../build/HelloWorld files/HelloWorld.cpp
g++ -Wall -o ../../build/SimpleClass files/SimpleClass.cc

RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
popd
