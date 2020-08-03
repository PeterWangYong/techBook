#!/usr/bin/env sh

message=$1
if [ -z message ];then message='deploy';fi
echo $message

# 确保脚本抛出遇到的错误
set -e

git add -A
git commit -m $message
git push -f https://github.com/PeterWangYong/frontBook.git master

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:PeterWangYong/peterwangyong.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/PeterWangYong/frontBook.git master:gh-pages