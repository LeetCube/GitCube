#!/bin/bash

main() {
    input
    js
}

input() {
    read -p "Enter [i] for install, or [u] for update: " setup
}

js() {
    if [ $setup = "i" ]; then
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
        exec $SHELL
        echo Terminal restarted
        command -v nvm
        echo You should see nvm
        nvm install --lts
        echo node version $(node --version)
        echo npm version $(npm --version)
        npm i --save-dev prettier
    elif [ $setup = "u" ]; then
        npm install -g npm@latest
        sudo npm install -g n # when prompted: enter your password
        n lts
        npm update
        echo node version $(node --version)
        echo npm version $(npm --version)
    else
        echo Command invalid
    fi
}

main
