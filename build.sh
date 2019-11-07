#!/usr/bin/env sh

# 生成静态文件
npm run docs:build

# 复制生成文件到根目录
cp -rf docs/.vuepress/dist/* .

# git init
# git config user.name "zyjwsg"
# git config user.email "zyjwsg@foxmail.com"
# git add -A
# git commit -m 'deploy'

# git push -f git@github.com:zyjwsg/zyjwsg.github.io.git master