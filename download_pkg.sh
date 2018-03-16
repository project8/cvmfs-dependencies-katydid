#!/bin/bash

source /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/setup.sh

########################################################################
#
# collect source distributions for all dependencies
#
########################################################################

# get into the parent directory for all the source code and build proucts
cd ${P8DEPKATYDIDBASEDIR}
mkdir src
cd src/
pwd


# download current (on 2015/09/16) versions of all dependencies
echo "Downloading source files"
wget --input-file=${P8DEPKATYDIDBASEDIR}/dependency_urls.txt --output-file=wget_log.txt --tries=3
echo "Download: complete!"
cat wget_log.txt
ls

mv download boost_1_59_0.tar.gz       # boost
gunzip boost_1_59_0.tar.gz
tar -xf boost_1_59_0.tar
ln -s boost_1_59_0 boost

bzip2 -d dlib-19.9.tar.bz2      # dlib
tar -xf dlib-19.9.tar
ln -s dlib-19.9 dlib
