#!/bin/bash

# specify the version of dependencies
export P8DEPKATYDIDBUILD=build-2017-10-18

# get the location of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# make the dependencies build directory
mkdir -p /cvmfs/hep.pnnl.gov/project8/dependencies/${P8DEPKATYDIDBUILD}

# copy in the necessary scripts
cp ${SCRIPT_DIR}/setup.sh /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/setup.sh
cp ${SCRIPT_DIR}/dependency_urls.txt /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/dependency_urls.txt
cp ${SCRIPT_DIR}/download_pkg.sh /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/download_pkg.sh
cp ${SCRIPT_DIR}/install.sh /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/install.sh

# setup the environment, and run the download and install scripts
source /cvmfs/hep.pnnl.gov/project8/dependencies/${P8DEPKATYDIDBUILD}/setup.sh
/cvmfs/hep.pnnl.gov/project8/dependencies/${P8DEPKATYDIDBUILD}/download_pkg.sh
/cvmfs/hep.pnnl.gov/project8/dependencies/${P8DEPKATYDIDBUILD}/install.sh
