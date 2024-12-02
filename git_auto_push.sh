#!/bin/bash
cd /root/sing-box-srs  # 进入仓库目录

# 检查是否有未提交的更改
if [[ $(git status --porcelain) ]]; then
    # 如果有更改，添加所有更改
    git add -A
    git commit -m "Auto commit"
    git push origin main
else
    echo "No changes to push"
fi
