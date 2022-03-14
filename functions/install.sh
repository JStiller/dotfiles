#!/bin/bash

source $PWD/variables/utils.sh

### INSTALL #############################################

function install() {
    if [[ $ENVIRONMENT == ubuntu ]]
        then
            apt-get install -y ${1} >> /dev/null && echo -e "install ${1} ${UTILS_DONE}" || echo -e "install ${1} ${UTILS_ABORT}"
    elif [[ $ENVIRONMENT == mac ]]
        then
            brew install ${1} >> /dev/null && echo -e "install ${1} ${UTILS_DONE}" || echo -e "install ${1} ${UTILS_ABORT}"
    fi
}
