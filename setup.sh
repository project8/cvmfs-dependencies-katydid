# setting dependencies and dep-morpho build name
export P8DEPBUILD=build-2017-10-18
export P8DEPKATYDIDBUILD=build-2018-03-15

# source the common dependencies 
source /cvmfs/hep.pnnl.gov/project8/dependencies-common/${P8DEPBUILD}/setup.sh

export P8BASEDIR=/cvmfs/hep.pnnl.gov/project8
export P8DEPKATYDIDBASEDIR=${P8BASEDIR}/dependencies-katydid/${P8DEPKATYDIDBUILD}

export PATH=${P8DEPKATYDIDBASEDIR}/bin:${PATH}
export INCLUDE_PATH=${P8DEPKATYDIDBASEDIR}/include:${INCLUDE_PATH}
export LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib:${LIBRARY_PATH}
export LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib64:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib:${LIBRARY_PATH}
export LD_LIBRARY_PATH=${P8DEPKATYDIDBASEDIR}/lib64:${LIBRARY_PATH}

export LIBDIR=${LD_LIBRARY_PATH}:${LIBDIR}


export MANPATH=${P8DEPKATYDIDBASEDIR}/share/man/man1:${MANPATH}
export PKG_CONFIG_PATH=${P8DEPKATYDIDBASEDIR}/lib/pkgconfig:${PKG_CONFIG_PATH}

export PYTHONPATH=${P8DEPKATYDIDBASEDIR}/lib/root:${P8DEPBASEDIR}/lib:${P8DEPBASEDIR}:${PYTHONPATH}
export XDG_DATA_DIRS=${P8DEPKATYDIDBASEDIR}/share:${XDG_DATA_DIRS}