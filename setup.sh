# setting dependencies and dep-morpho build name
export P8DEPBUILD=build-2017-10-18
export P8DEPKATYDIDBUILD=build-2017-10-18

# source the common dependencies 
source /cvmfs/hep.pnnl.gov/project8/dependencies-common/${P8DEPBUILD}/setup.sh


export P8BASEDIR=/cvmfs/hep.pnnl.gov/project8
export P8DEPKATYDIDBASEDIR=${P8BASEDIR}/dependencies-katydid/${P8DEPKATYDIDBUILD}

# in the real CVMFS system, gcc is installed in the externals directory
# in the docker system, gcc is installed via yum
# export GCCBASEDIR=/cvmfs/hep.pnnl.gov/externals/
# export PATH=${GCCBASEDIR}/bin:${PATH}
# export INCLUDE_PATH=${GCCBASEDIR}/include:${INCLUDE_PATH}
# export LIBRARY_PATH=${GCCBASEDIR}/lib:${LIBRARY_PATH}
# export LIBRARY_PATH=${GCCBASEDIR}/lib64:${LIBRARY_PATH}
# export LD_LIBRARY_PATH=${GCCBASEDIR}/lib:${LIBRARY_PATH}
# export LD_LIBRARY_PATH=${GCCBASEDIR}/lib64:${LIBRARY_PATH}

export PATH=${P8DEPKATYDIDBASEDIR}/bin:${PATH}
export INCLUDE_PATH=${P8DEPKATYDIDBASEDIR}/include:${INCLUDE_PATH}
export LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib:${LIBRARY_PATH}
export LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib64:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib64:${LIBRARY_PATH}

export LIBDIR=${LD_LIBRARY_PATH}:${LIBDIR}

# source /opt/rh/devtoolset-3/enable

export MANPATH=${P8DEPKATYDIDBASEDIR}/share/man/man1:${MANPATH}
export PKG_CONFIG_PATH=${P8DEPKATYDIDBASEDIR}/lib/pkgconfig:${PKG_CONFIG_PATH}

export PYTHONPATH=${P8DEPKATYDIDBASEDIR}/lib/root:${P8DEPBASEDIR}/lib:${P8DEPBASEDIR}:${PYTHONPATH}
export XDG_DATA_DIRS=${P8DEPKATYDIDBASEDIR}/share:${XDG_DATA_DIRS}

# export CC=`which cc`
# export CXX=`which g++`
# export LD=`which ld`

# if [ -e ${P8DEPKATYDIDBASEDIR}/bin/thisroot.sh ]; then
	# source ${P8DEPKATYDIDBASEDIR}/bin/thisroot.sh
# fi
