#!/bin/bash

echo "Setup config to ${ODL_SYSTEM_IP}"
ssh ${ODL_SYSTEM_IP} "mkdir -p /tmp/${BUNDLEFOLDER}/etc/opendaylight/karaf/"

if [ "${BRANCH#*/}" == "lithium" ]; then
    scp ${WORKSPACE}/test/csit/suites/sxp/basic/22-sxp-controller-one-node-lithium.xml ${ODL_SYSTEM_IP}:/tmp/${BUNDLEFOLDER}/etc/opendaylight/karaf/22-sxp-controller-one-node.xml
elif [ "${BRANCH#*/}" == "beryllium" ]; then
    scp ${WORKSPACE}/test/csit/suites/sxp/basic/22-sxp-controller-one-node-beryllium.xml ${ODL_SYSTEM_IP}:/tmp/${BUNDLEFOLDER}/etc/opendaylight/karaf/22-sxp-controller-one-node.xml
fi
