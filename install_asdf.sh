#!/bin/bash

source $PWD/variables/utils.sh
source $PWD/functions/environment.sh

if [[ $ENVIRONMENT == ubuntu ]]; then
    git clone -q https://github.com/asdf-vm/asdf.git $HOME/.asdf >>/dev/null && echo '. $HOME/.asdf/asdf.sh' >>$HOME/.bashrc && echo '. $HOME/.asdf/completions/asdf.bash' >>$HOME/.bashrc && echo -e "install asdf ${UTILS_DONE}" || echo -e "install asdf ${UTILS_ABORT}"
    source ~/.bashrc
elif [[ $ENVIRONMENT == mac ]]; then
    brew install asdf >>/dev/null && echo -e "install ${1} ${UTILS_DONE}" || echo -e "install ${1} ${UTILS_ABORT}"
fi

asdf plugin add nodejs
asdf plugin add php
asdf plugin add golang https://github.com/kennyp/asdf-golang.git
asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf plugin add kotlin
asdf plugin add racket
asdf plugin add clojure

echo "You can now run:"
echo "asdf install php latest"
echo "asdf global php latest"
