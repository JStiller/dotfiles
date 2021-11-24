#!/bin/bash

### INSTALL #############################################

function install() {
    if [[ $ENVIRONMENT == ubuntu ]]
        then
            apt-get install -y ${1} >> /dev/null && echo -e "install ${1} ${SYMBOL_DONE}" || echo -e "install ${1} ${SYMBOL_ABORT}"
    elif [[ $ENVIRONMENT == mac ]]
        then
            brew install ${1} >> /dev/null && echo -e "install ${1} ${SYMBOL_DONE}" || echo -e "install ${1} ${SYMBOL_ABORT}"
    fi
}
