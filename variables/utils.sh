#!/bin/bash

source $PWD/variables/colors.sh
source $PWD/variables/symbols.sh

### UTILS ###############################################

UTILS_DONE="$(color green)${SYMBOL_DONE}$(text normal) "
UTILS_ABORT="$(color red)${SYMBOL_ABORT}$(text normal) "

warning() {
    echo -e "$(color red)${1}$(text normal) "
}