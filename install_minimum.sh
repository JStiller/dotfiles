#!/bin/bash

source $PWD/variables/utils.sh
source $PWD/functions/environment.sh
source $PWD/functions/install.sh

echo -e "Desired environment: ${ENVIRONMENT}"

if [[ $ENVIRONMENT == mac ]]; then
    $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
fi

install curl
install git
add-apt-repository -y ppa:aacebedo/fasd >>/dev/null && apt-get update >>/dev/null && apt-get install fasd >>/dev/null && echo -e "install fasd ${UTILS_DONE}" || echo -e "install fasd ${UTILS_ABORT}"
install fzf
install peco

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
if test ! -f "$HOME/.gitconfig"; then
    ln -sr $PWD/config/.gitconfig $HOME/.gitconfig && echo -e "gitconfig ${UTILS_DONE}" || echo -e "gitconfig ${UTILS_ABORT}"
else
    echo "skipped .gitconfig"
fi

echo "set config"
if test ! -f "$HOME/.gitignore"; then
    ln -sr $PWD/config/.gitignore $HOME/.gitignore && echo -e "gitignore ${UTILS_DONE}" || echo -e "gitignore ${UTILS_ABORT}"
else
    echo "skipped .gitignore"
fi
