#!/bin/bash

source $PWD/variables/utils.sh

### ENVIRONMENT #########################################

if [[ -z "${1+x}" ]]
    then
        read -p "Please specify the desired environment: " ENVIRONMENT
    else
        ENVIRONMENT=$1
fi


if [[ $ENVIRONMENT != ubuntu ]] && [[ $ENVIRONMENT != mac ]]
    then
        echo $(warning "The desired enivronment is not supported.")
        echo $(warning "We do support \"ubuntu\" and \"mac\".")
        exit
fi