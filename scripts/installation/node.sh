#!/bin/bash

#https://github.com/nvm-sh/nvm

sh -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash)"



nvm install 18.16.0 

npm i -g npm eslint prettier liveserver ndb typescript yarn pnpm nodemon corepack
npm i -g bash-language-server pyright tree-sitter-cli ts-node typescript-language-server 
npm i -g typescript vscode-langservers-extracted yaml-language-server@latest 

