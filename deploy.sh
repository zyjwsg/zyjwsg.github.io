#!/usr/bin/env sh

# NOTE this shell script will only deploy dist directory to remote server
# if you want to save source code to git repository, DO NOT USE this script.

npm run docs:build

cd docs/.vuepress/dist

git init
git config user.name "zyjwsg"
git config user.email "zyjwsg@foxmail.com"
git add -A
git commit -m 'deploy'

git push -f git@github.com:zyjwsg/zyjwsg.github.io.git master

cd -