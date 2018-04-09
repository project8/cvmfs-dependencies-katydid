FROM project8/cvmfs-dependencies-common:build-2018-04-09

ENV P8DEPKATYDIDBUILD=build-2018-04-09

RUN mkdir -p /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}

ADD ./setup.sh /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/setup.sh
ADD ./dependency_urls.txt /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/dependency_urls.txt
ADD ./download_pkg.sh /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/download_pkg.sh
ADD ./install.sh /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/install.sh

RUN source /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/setup.sh && \
    chmod +x /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/setup.sh &&\
    sleep 1 &&\
    /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/download_pkg.sh && \
    chmod +x /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/download_pkg.sh &&\    
    sleep 1 &&\
    /cvmfs/hep.pnnl.gov/project8/dependencies-katydid/${P8DEPKATYDIDBUILD}/install.sh
