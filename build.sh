#!/bin/bash

mkdir -p src/module
mkdir build
mv files src/module
mv .git src/module
pushd ./src/module
echo "BUILDING"

ccache g++ -Wall -o ../../build/BiggestUnInt files/BiggestUnInt.cc
ccache g++ -Wall -o ../../build/HelloWorld files/HelloWorld.cpp
ccache g++ -Wall -o ../../build/SimpleClass files/SimpleClass.cc
ccache g++ -Wall -o ../../build/HelloWorld files/HelloMundo.cpp

RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
popd
