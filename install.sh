#!/bin/bash

source /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/setup.sh

cd ${P8DEPKATYDIDBASEDIR}/src/
pwd

echo "where are we?"
pwd

#######################################################################
#
# build all dependencies from source
#
########################################################################


echo "Environment variables:"
env
echo `which python3`
echo `python3 -V`
echo `gcc --version`
echo `python3 --version`
echo `which cc`
echo `which g++`
echo `which ld`
echo "LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
echo "LIBRARY_PATH: $LIBRARY_PATH"
echo "LIBDIR: $LIBDIR"
echo "PYTHONPATH: $PYTHONPATH"
echo "Library search path:"

# dlib
echo 'dlib'
cd dlib
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX:PATH=${P8DEPKATYDIDBASEDIR} -D CMAKE_INSTALL_BINDIR:PATH=${P8DEPKATYDIDBASEDIR}/bin -D CMAKE_INSTALL_LIBDIR:PATH=${P8DEPKATYDIDBASEDIR}/lib -D CMAKE_INSTALL_INCLUDEDIR:PATH=${P8DEPKATYDIDBASEDIR}/include ..  | tee config_log.txt
make -j3                            | tee make_log.txt
make -j3 install                    | tee make_install_log.txt
cd ../..

# Clean up the source directory
pwd
rm -rf *
