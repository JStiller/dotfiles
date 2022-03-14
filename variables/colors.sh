#!/bin/bash

### COLORS ##############################################

text() {
    case "$1" in
        normal)    echo '\033[0m';;
        bold)      echo '\033[1m';;
        italic)    echo '\033[3m';;
        underline) echo '\033[4m';;
        negative)  echo '\033[7m';;
        crossed)   echo '\033[9m';;
    esac
}

color() {
    case "$1" in
        green)  echo '\033[32m';;
        red)    echo '\033[31m';;
        blue)   echo '\033[34m';;
        yellow) echo '\033[33m';;
    esac
}

background() {
    case "$1" in
        green)  echo '\033[42m';;
        red)    echo '\033[41m';;
        blue)   echo '\033[44m';;
        yellow) echo '\033[43m';;
    esac
}
