#!/bin/bash

source ./variables/colors.sh
source ./variables/symbols.sh
source ./functions/environment.sh
source ./functions/install.sh

echo -e "Desired environment: ${ENVIRONMENT}"

if [[ $ENVIRONMENT == mac ]]
    then
        $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
fi

install curl
install git
add-apt-repository -y ppa:aacebedo/fasd >> /dev/null && apt-get update >> /dev/null && apt-get install fasd >> /dev/null && echo -e "install fasd ${SYMBOL_DONE}" || echo -e "install fasd ${SYMBOL_ABORT}"
install fzf

echo ""
echo "required for kotlin"
install unzip

echo ""
echo "required for php"
install autoconf
install bison
install re2c
install pkg-config
install libxml2-dev
install libsqlite3-dev
install zlib1g-dev
install libcurl4-openssl-dev
install libgd-dev
install libonig-dev
install libpq-dev
install libreadline-dev
install libzip-dev

echo ""
echo "set config"
ln -sr ./config/.gitconfig $HOME/.gitconfig && echo -e "gitconfig ${SYMBOL_DONE}" || echo -e "gitconfig ${SYMBOL_ABORT}"
ln -sr ./config/.gitignore $HOME/.gitignore && echo -e "gitignore ${SYMBOL_DONE}" || echo -e "gitignore ${SYMBOL_ABORT}"

