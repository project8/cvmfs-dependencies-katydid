#!/bin/bash

# get the location of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# call the setup script to establish all necessary environment variables
source ${SCRIPT_DIR}/setup.sh

# make the dependencies build directory
mkdir -p ${P8DEPKATYDIDBASEDIR}

# copy in the necessary scripts
cp ${SCRIPT_DIR}/setup.sh ${P8DEPKATYDIDBASEDIR}/setup.sh
cp ${SCRIPT_DIR}/dependency_urls.txt ${P8DEPKATYDIDBASEDIR}/dependency_urls.txt
cp ${SCRIPT_DIR}/download_pkg.sh ${P8DEPKATYDIDBASEDIR}/download_pkg.sh
cp ${SCRIPT_DIR}/install.sh ${P8DEPKATYDIDBASEDIR}/install.sh

# run the download and install scripts
${P8DEPKATYDIDBASEDIR}/download_pkg.sh
${P8DEPKATYDIDBASEDIR}/install.sh
