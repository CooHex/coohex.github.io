#!/bin/bash

# 如果任何命令失败，则立即退出
set -e

echo "正在为 coohex.com 构建..."
bundle exec jekyll build --config _config_coohex_com.yml --destination build/_site_coohex_com

echo "正在为 coohex.github.io 构建..."
bundle exec jekyll build --config _config_coohex_github_io.yml --destination build/_site_coohex_github_io

# echo "正在为 development 构建..."
# bundle exec jekyll build --config _config_development.yml --destination build/_site_development

echo "所有构建已完成！"